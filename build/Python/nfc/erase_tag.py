#! /usr/bin/python
from __future__ import print_function
from __future__ import absolute_import
import sys

import nfc_comm


def main():
    nfc = nfc_comm.NFC()
    readers = nfc.get_readers()
    print('Found {} readers.'.format(len(readers)))
    if len(readers) == 0:
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
        card.write(conn, [0xA5] * card.DATA_LEN)

    print('Erased card.')


if __name__ == '__main__':
    sys.exit(main())
