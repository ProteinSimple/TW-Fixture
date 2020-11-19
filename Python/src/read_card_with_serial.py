from __future__ import absolute_import
from __future__ import print_function
import sys
sys.path.append('python/src/nfc')
import smartcard.scard as sc
from nfc import apdu, nfc_comm
from nfc import scard_wrapper as scw

def main(serial):
    # Get Reader Objects
    nfc = nfc_comm.NFC()
    try:
        readers = nfc.get_readers()
    except scw.NFCException:
        return 'No reader present'
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

def decode_value(value):
    return ''.join(chr(i) for i in value)

def get_reader_with_serial(nfc, readers, serial):
    for reader in readers:
        if 'SCM Microsystems' in reader:
            try:
                conn = nfc_comm.Connection(nfc, reader)
                currentSerial = scw.get_attrib(conn.hcard, sc.SCARD_ATTR_VENDOR_IFD_SERIAL_NO)
                if conn.serial == serial:
                    return conn
                else:
                    conn.disconnect()
            except scw.NFCException as nfce:
                continue
    return('The specified reader was either not found, or did not read a card.')

def get_attrib(hcard, dwAttrId):
    rv, attrib = sc.SCardGetAttrib(hcard, dwAttrId)
    if rv == sc.SCARD_S_SUCCESS:
        return decode_value(attrib)
    else:
        raise scw.NFCException(rv)

if __name__ == '__main__':
    sys.exit(main(0))
