import sys
import os
sys.path.append(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'nfc'))
from smartcard import scard as sc
from nfc import nfc_comm as nfc_comm
from nfc import scard_wrapper as scw


class nfcReaderManager(object):  
    def __init__(self):
        self.nfc = nfc_comm.NFC()


    def close(self):
        self.nfc.close()


    def __del__(self):
        self.close()


    def __enter__(self):
        self.readers = self.nfc.get_readers()


    def __exit__(self, type_, value, traceback):
        self.close()
    

    def decode_value(value):
        return ''.join(chr(i) for i in value)


    def get_attrib(hcard, dwAttrId):
        rv, attrib = sc.SCardGetAttrib(hcard, dwAttrId)
        if rv == sc.SCARD_S_SUCCESS:
            return decode_value(attrib)
        else:
            raise scw.NFCException(rv)


    def read_card_with_serial(self, serial):
        for reader in self.readers:
            if 'SCM Microsystems' in reader:
                try:
                    with nfc_comm.Connection(self.nfc, reader) as conn:
                        currentSerial = get_attrib(conn.hcard, sc.SCARD_ATTR_VENDOR_IFD_SERIAL_NO)
                        if currentSerial == serial:
                            tag = nfc_comm.maybe_tag(conn)
                            if tag is none:
                                return('Cartridge not detected.')
                            else:
                                return(str(tag.dic))
                except scw.NFCException as nfce:
                    continue
        return('The specified reader was not detected.')
