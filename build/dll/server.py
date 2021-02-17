from __future__ import absolute_import
import copy
import functools
import logging

from autobahn.twisted.util import sleep
from autobahn.twisted.wamp import ApplicationSession

from twisted.internet.defer import inlineCallbacks

from nfc.scard_wrapper import NFCException
import nfc.nfc_comm as nfc_comm
import nfc.packet as packet

#
# Send twisted messages to the Python logger, and create a decorator
# for registered functions.
#

LOG = logging.getLogger(__name__)

# If we're getting errors from pcscd, return this.
NO_NFC_READER = {'readers': [], 'cards': []}


def setup_logging():
    logging.basicConfig(level=logging.INFO)


# Decorate RPC endpoints to log exceptions.


def log_exceptions(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        try:
            return func(*args, **kwargs)
        except:
            LOG.exception("%s exception", func.__name__)
            raise
    return wrapper


def convert_v1_cards_to_v2(nfc):
    v1_cards = [
        c for c in nfc_comm.get_cards(nfc)
        if c.dic['formatted'] and c.dic['fields']['version'] == 1]
    for v1_card in v1_cards:
        convert_v1_card_to_v2(nfc, v1_card)


def convert_v1_card_to_v2(nfc, card):
    with nfc_comm.Connection(nfc) as conn:
        v1_fields = card.dic['fields']
        v2_fields = packet.v1_to_v2(v1_fields)
        LOG.info('Converting v1 tag to v2. v1 tag %s\nv2 tag %s',
                 v1_fields, v2_fields)
        card.write(conn, packet.encode(v2_fields))


def read_status():
    '''Readers and tags come and go. Always return something reasonable.'''
    with nfc_comm.NFC() as nfc:
        readers = nfc.get_readers()
        if len(readers) == 0:
            return NO_NFC_READER

        convert_v1_cards_to_v2(nfc)

        cards = nfc_comm.get_cards(nfc)
        return {
            'readers': readers,
            'cards': [card.dic for card in cards]}


def safe_read_status():
    # pylint: disable=bare-except
    try:
        return read_status()
    except NFCException:
        # NFCExceptions occur any time someone removes the card while
        # it is being read. Ignore them.
        return NO_NFC_READER
    except:
        # We want to log a traceback if there is any other kind
        # of exception.
        LOG.exception('read_status() exception.')
        return NO_NFC_READER


@log_exceptions
def rpc_v2_defaults(cartridge_type):
    LOG.info("rpc_v2_defaults")
    return packet.v2_defaults(cartridge_type)


@log_exceptions
def rpc_read_status():
    return safe_read_status()


@log_exceptions
def rpc_write_tag(fields):
    LOG.info("rpc_write_tag: %s", fields)
    data_bytes = packet.encode(fields)
    LOG.debug("write bytes %s", nfc_comm.fmt_bytes(data_bytes))
    with nfc_comm.NFC() as nfc, nfc_comm.Connection(nfc) as conn:
        cards = nfc_comm.get_cards(nfc)
        card = cards[0]
        card.write(conn, data_bytes)


class NFCComponent(ApplicationSession):

    @inlineCallbacks
    def onJoin(self, _details):
        setup_logging()
        self.register(rpc_read_status, u'read_status')
        self.register(rpc_v2_defaults, u'v2_defaults')
        self.register(rpc_write_tag, u'write_tag')

        old_status = None
        msg_id = 1
        while True:
            yield sleep(0.1)
            status = safe_read_status()
            if status != old_status:
                LOG.info("status: %s", status)
                msg_id += 1
                old_status = status

            status_to_send = copy.deepcopy(status)
            status_to_send['msg_id'] = msg_id
            self.publish(u'status', status_to_send)
