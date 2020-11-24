#! /usr/bin/python
from __future__ import absolute_import
from __future__ import print_function
from pprint import pprint
import sys

import nfc.apdu as apdu
import nfc.nfc_comm as nfc_comm


def main():
    nfc = nfc_comm.NFC()
    readers = nfc.get_readers()
    print('Found {} readers.'.format(len(readers)))
    if len(readers) == 0:
        return 0

    print_sep()
    reader_status = nfc_comm.ReaderStatus(nfc.get_status_change()[0])

    if not reader_status.is_card_present():
        print('No card present.')
        return 0

    print('Connecting to card...')
    conn = nfc_comm.Connection(nfc, readers[0])

    print('Reading UID...')
    uid = nfc_comm.check_err(conn.transmit(apdu.get_uid()))
    print('UID: {}'.format(' '.join([hex2(byte) for byte in uid])))

    print_sep()
    print('Sending NXP GET_VERSION using PASS_THROUGH command...')
    version_blk = conn.transmit(apdu.get_version())
    version_str = ' '.join([hex2(byte) for byte in version_blk])
    print('version: {}'.format(version_str))

    print_sep()
    print('Reading blocks until an error is raised...')
    for block_num in range(0, 64):
        try:
            blk = nfc_comm.check_err(conn.transmit(apdu.read_block(block_num)))

        # pylint: disable=bare-except
        except:
            print('Reached end of readable blocks.')
            break
        else:
            blk_str = ' '.join([hex2(byte) for byte in blk])
            print('block_num {0:02x}:   {1}'.format(block_num, blk_str))

    pprint(nfc_comm.NTAG203(conn).dic)


def print_sep():
    print('-' * 60)


def hex2(val):
    return '{0:02x}'.format(val)


if __name__ == '__main__':
    sys.exit(main())
