#! /usr/bin/python
from __future__ import absolute_import
from __future__ import print_function
from pprint import pprint
import sys

import apdu
import nfc_comm
from scard_wrapper import NFCException

def main(serial):
    # Get Reader Objects
    nfc = nfc_comm.NFC()
    readers = nfc.get_readers()
    # Return if no readers are available
    if len(readers) == 0:
        return 'No reader present'
    # Return if the serial value is not an integer   
    elif isinstance(serial, str):
        # Return if the index value is greater than the number of available readers
        conn = get_reader_with_serial(nfc, readers, serial)
        # Return that the reader is found but there is no card value
        if isinstance(conn, str): return conn
    else:
        return 'The Serial Number Input should be a String'

    data = str(nfc_comm.NTAG203(conn).dic)
    conn.disconnect()
    return(data)


def print_sep():
    print('-' * 60)


def hex2(val):
    return '{0:02x}'.format(val)

def get_reader_with_serial(nfc, readers, serial):
    for reader in readers:
        if 'SCM Microsystems' in reader:
            try:
                conn = nfc_comm.Connection(nfc, reader)
                if conn.serial == serial:
                    return conn
                else:
                    conn.disconnect()
            except NFCException as nfce:
                continue
    return('The specified reader was either not found, or did not read a card.')

if __name__ == '__main__':
    sys.exit(main(0))
