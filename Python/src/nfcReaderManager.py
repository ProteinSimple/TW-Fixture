import logging
import sys

import smartcard.scard as sc

from helpers import change_char
import nfc
import nfc.packet as packet
from nfc import nfc_comm as nfc_comm
from nfc import scard_wrapper as scw


class nfcReaderManager(object):
    reader = None

    def __init__(self):
        self.nfc = nfc_comm.NFC()
        self.__connect()

    def __del__(self):
        self.close()

    def close(self):
        self.nfc.close()

    def __connect(self):
        '''Look for all available readers and return the correct one'''
        readers = self.nfc.get_readers()
        if len(readers) == 0:
            self.logger.debug('No Readers Available')
        for reader in readers:
            if 'SCM Microsystems' in reader:
                self.logger.info(f'Found reader with ID: {reader}')
                self.reader = reader
                return
        self.reader = None

    def getTag(self):
        '''Return a tag if it is available'''
        with nfc_comm.Connection(self.nfc, self.reader) as conn:
            return nfc_comm.maybe_tag(conn)

    def read(self):
        '''Obtain Tag Data.  Returns None if no data is present'''
        data = self.getTag()
        if data:
            data = data.dic
        return data

    def reconnect(self):
        '''Look for all available readers and return the correct one'''
        self.reestablishConnection()
        readers = self.nfc.get_readers()
        for reader in readers:
            if 'SCM Microsystems' in reader:
                self.reader = reader
                return
        self.reader = None

    def reestablishConnection(self):
        self.nfc = nfc_comm.NFC()
        self.reader = None

    def status(self):
        '''Check if reader has a card'''
        if self.isAvailable():
            status = nfc_comm.ReaderStatus(self.nfc.get_status_change()[0])
            return status.is_card_present()
        else:
            return False

