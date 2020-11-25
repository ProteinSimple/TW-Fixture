import sys
from nfcReaderManager import nfcReaderManager

def main(serial): 
    if isinstance(serial, str):
        # Return if the index value is greater than the number of available readers
        try:
            nfcManager = nfcReaderManager()
            data = nfcManager.read_card_with_serial(serial)
        except Exception as err:
            return('No NFC readers detected.')
    else:
        return 'The Serial Number Input should be a String'
    return(data)

if __name__ == '__main__':
    sys.exit(main(0))
