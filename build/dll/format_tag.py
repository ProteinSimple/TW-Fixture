#! /usr/bin/python
from __future__ import absolute_import
from __future__ import print_function
from pprint import pprint
import argparse
import logging
import sys

import nfc.nfc_comm as nfc_comm
import nfc.packet as packet


def main():
    logging.basicConfig(level=logging.DEBUG)

    parser = argparse.ArgumentParser()
    parser.add_argument('--version', default=2, nargs='?', type=int)
    options = parser.parse_args()

    nfc = nfc_comm.NFC()
    readers = nfc.get_readers()
    if len(readers) == 0:
        print('Cannot find NFC reader.')
        return 2

    reader_status = nfc_comm.ReaderStatus(nfc.get_status_change()[0])
    if not reader_status.is_card_present():
        print('No card present.')
        return 2

    print('Found card.')

    cards = nfc_comm.get_cards(nfc)
    if len(cards) == 0:
        print('Card is not NTAG203.')
        return 2

    print('Card is NTAG203.')
    card = cards[0]

    with nfc_comm.Connection(nfc) as conn:
        if options.version == 1:
            defaults = packet.v1_defaults()
        else:
            defaults = packet.v2_defaults(1)
        pprint(defaults)
        card.write(conn, packet.encode(defaults))


if __name__ == '__main__':
    sys.exit(main())
