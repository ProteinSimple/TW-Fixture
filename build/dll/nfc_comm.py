'''Provide Pythonic interface to smartcard library.

Within this module 'cards' and 'tags' are used interchangeably.

Error Handling
--------------

Reading the NFC tag can fail for lots of reasons, and in nearly every case,
the right thing to do is just try again. For that reason, the maybe_tag()
call catches all exceptions that can occur in trying to read an NFC tag,
and either returns the tag, or None.

By contrast, writing to a tag that you just read should not fail, and if it
does, the application must decide what to do. For that reason, write failures
raise Exceptions, which higher-level code must catch and decide how to handle.
'''

from __future__ import absolute_import
import itertools
import logging

from six.moves import range, zip
import more_itertools as mi
import smartcard.scard as sc
import smartcard.sw.SWExceptions as SWExceptions
import smartcard.sw.ISO7816_4ErrorChecker as err_checker

import nfc.scard_wrapper as scw
import nfc.apdu as apdu
import nfc.packet as packet


CHECK_ERR = err_checker.ISO7816_4ErrorChecker()
LOG = logging.getLogger(__name__)


class NFC(object):
    def __init__(self):
        self.context = scw.establish_context(sc.SCARD_SCOPE_SYSTEM)

    def close(self):
        scw.release_context(self.context)

    def __enter__(self):
        return self

    def __exit__(self, type_, value, traceback):
        self.close()

    def get_readers(self):
        'Returns list of reader strings'
        return scw.list_readers(self.context)

    def get_status_change(self):
        'Returns (name, state, ATR) tuple.'
        return scw.card_get_status_change(self.context)

    def get_readers_with_tags(self):
        'Returns list of reader strings, just like get_readers().'
        # We don't use the ATR for anything.
        return [
            n for n, s, _ in self.get_status_change() if is_card_present(s)]


class Connection(object):
    def __init__(self, nfc, reader=None):
        if reader is None:
            # For most use cases, all the caller cares about is the first
            # reader that has a tag.
            self.reader = nfc.get_readers_with_tags()[0]
        else:
            self.reader = reader
        self.hcard, self.proto = scw.card_connect(nfc.context, self.reader)

    def __enter__(self):
        return self

    def __exit__(self, type_, value, traceback):
        self.disconnect()

    def __repr__(self):
        return '<Connection to "{0}">'.format(self.reader)

    def disconnect(self):
        scw.card_disconnect(self.hcard)

    def transmit(self, bytes_):
        'Tranmits APDU and returns response, without checking for errors.'
        return scw.transmit(self.hcard, self.proto, bytes_)


def check_err(bytes_):
    '''Check the error codes that are the last two bytes of a response.'''
    data, sw1, sw2 = bytes_[:-2], bytes_[-2], bytes_[-1]
    CHECK_ERR(data, sw1, sw2)
    return data


class NTAG203(object):
    '''Either read everything from the card, or throw an exception.'''
    FIRST_BLOCK = 0x04
    LAST_BLOCK = 0x27
    BLOCK_LEN = 4
    DATA_LEN = (LAST_BLOCK - FIRST_BLOCK + 1) * 4

    def __init__(self, conn):
        self.uid = self.read_uid(conn)
        self.data_bytes = self.read(conn)
        self.dic = self.parse(self.data_bytes)

    def parse(self, bytes_):
        LOG.debug("Parsing %s bytes %s", len(bytes_), fmt_bytes(bytes_))
        maybe_parsed = packet.decode(bytes_)

        if maybe_parsed:
            return {
                'uid': self.uid,
                'formatted': True,
                'fields': maybe_parsed}

        return {
            'uid': self.uid,
            'formatted': False}

    def read_block(self, conn, block_num):
        return check_err(conn.transmit(apdu.read_block(block_num)))

    def read(self, conn):
        block_addrs = range(self.FIRST_BLOCK,
                             self.LAST_BLOCK + 1)
        data_blocks = [self.read_block(conn, blk) for blk in block_addrs]
        data_bytes = list(itertools.chain(*data_blocks))
        LOG.debug('read bytes: %s', fmt_bytes(data_bytes))
        return data_bytes

    def read_uid(self, conn):
        return check_err(conn.transmit(apdu.get_uid()))

    def write(self, conn, bytes_):
        assert len(bytes_) <= self.DATA_LEN
        padded_bytes = pad_zeros(bytes_, self.BLOCK_LEN)

        addr_iter = range(
            self.FIRST_BLOCK, self.LAST_BLOCK + 1)
        data_iter = mi.grouper(self.BLOCK_LEN, padded_bytes)

        for block_num, data_block in zip(addr_iter, data_iter):
            LOG.debug(
                "Writing %s to block %02x", fmt_bytes(data_block),
                block_num)
            self.write_block(conn, block_num, data_block)

    def write_block(self, conn, block_num, bytes_):
        check_err(conn.transmit(apdu.write_block(block_num, bytes_)))

    def __repr__(self):
        return '<NTAG203Tag UID: {0}">'.format(self.uid)


class ReaderStatus(object):
    def __init__(self, reader_status):
        self.reader_str, self.status_word, self.atr = reader_status

    def is_card_present(self):
        return is_card_present(self.status_word)


def maybe_tag(conn):
    '''Either return a NTAG203Tag object or None.'''

    try:
        return NTAG203(conn)
    except SWExceptions.CheckingErrorException:
        # Failure to read a card appears as a CheckingErrorException. This
        # is an intermittent error that is too common to log.
        pass
    except SWExceptions.SWException as exc:
        # Log the less common failures raised by the card reader.
        logstr = '{note} {msg}, sw1: {sw1} sw2: {sw2} data {data}'.format(
            note='Unable to read card because:',
            msg=exc.message, sw1=hex(exc.sw1), sw2=hex(exc.sw2),
            data=exc.data)
        LOG.warn(logstr)
    except Exception as exc:
        LOG.exception('Exception: %s', exc)
    return None


def fmt_bytes(list_of_bytes):
    return ' '.join(['%02x' % b for b in list_of_bytes])


def get_cards(nfc):
    tags = []
    for reader in nfc.get_readers_with_tags():
        with Connection(nfc, reader) as conn:
            tag = maybe_tag(conn)
            if tag:
                tags.append(tag)
    return tags


def hex2(val):
    return '{0:02x}'.format(val)


def is_card_present(reader_state):
    return bool(reader_state & sc.SCARD_STATE_PRESENT)


def pad_zeros(bytes_, alignment):
    return bytes_ + ([0] * (len(bytes_) % alignment))
