from __future__ import absolute_import
import smartcard.scard as sc


class NFCException(Exception):
    def __init__(self, err_code):
        self.err_code = err_code

    def __str__(self):
        return sc.SCardGetErrorMessage(self.err_code)


def card_connect(context, reader_name):
    rv, hcard, proto = sc.SCardConnect(
        context,
        reader_name,
        sc.SCARD_SHARE_DIRECT,
        sc.SCARD_PROTOCOL_T0 | sc.SCARD_PROTOCOL_T1 | sc.SCARD_PROTOCOL_RAW)
    if rv != 0:
        raise NFCException(rv)
    return hcard, proto


def card_disconnect(hcard):
    rv = sc.SCardDisconnect(hcard, sc.SCARD_LEAVE_CARD)
    if rv != 0:
        raise NFCException(rv)


def card_status(hcard):
    rv, _reader, state, _proto, atr = sc.SCardStatus(hcard)
    if rv != 0:
        raise NFCException(rv)
    return state, atr


def card_get_status_change(context):
    rv, reader_tuples = sc.SCardGetStatusChange(
        context, 0, create_reader_structs(list_readers(context)))
    if rv != 0:
        raise NFCException(rv)
    return reader_tuples


def create_reader_structs(readers):
    return [(r, sc.SCARD_STATE_UNAWARE) for r in readers]


def decode_value(value):
    return ''.join(chr(i) for i in value)


def establish_context(scope):
    rv, context = sc.SCardEstablishContext(scope)
    if rv != 0:
        raise NFCException(rv)
    return context


def get_attrib(hcard, dwAttrId):
    rv, attrib = sc.SCardGetAttrib(hcard, dwAttrId)
    if rv == sc.SCARD_S_SUCCESS:
        return decode_value(attrib)
    else:
        raise NFCException(hresult)


def list_readers(context):
    rv, readers = sc.SCardListReaders(context, [])
    if rv:
        if rv == sc.SCARD_E_NO_READERS_AVAILABLE:
            return []
        raise NFCException(rv)
    return readers


def release_context(context):
    rv = sc.SCardReleaseContext(context)
    if rv != 0:
        raise NFCException(rv)


def transmit(hcard, proto_hdr, bytes_):
    rv, resp = sc.SCardTransmit(hcard, proto_hdr, bytes_)
    if rv != 0:
        raise NFCException(rv)
    return resp
