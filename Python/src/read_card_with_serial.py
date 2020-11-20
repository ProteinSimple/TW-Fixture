from nfcReaderManager import nfcReaderManager

def main(serial): 
    if isinstance(serial, str):
        # Return if the index value is greater than the number of available readers
        try:
            with nfcReaderManager() as mgr:
                data = mgr.read_card_with_serial(serial)
        except:
            return('No NFC readers detected.')
    else:
        return 'The Serial Number Input should be a String'
    return(data)

if __name__ == '__main__':
    sys.exit(main(0))
