from __future__ import absolute_import
import binascii
import calendar
import datetime as dt
import struct
import sys

from tzlocal import get_localzone
import more_itertools as mi
import pytz
import six
from six.moves import zip

# The external interfaces to this module are the encode and decode methods.
#
# The fmt functions contain the formatting strings used by the struct
# module to build and parse binary strings.
#
#
# For v1, the data on the 144 byte tag is laid out like this:
#
#       1 data padding crc32
#       |---- 128 bytes ---| unused
#       |--------- 144 bytes ------|
#
# The layout is an accident of history, in that it was designed for a 128-byte
# tag, and then after development, a 144-byte tag started being used. So, while
# the original intent was to have the crc32 at the end of the data, that isn't
# actually the case for 144-byte tags.
#
# The entire length of the tag is called a packet.
# The first 124-bytes is called the payload.
#
#
# For v2, the data on the tag is laid out like this:
#
#       2 crc32 data padding
#
# My thinking is that the code can use the version to determine how long the
# data is. And from that it can validate the CRC. The advantage of this is
# that it gives the format some independence from the length of the tag. The
# downside is that that you have to do a bit more processing before you know
# whether the CRC is valid.

VERSION_LEN = 1
CRC_LEN = 4


def encode(card_dic):
    version = card_dic['version']
    encoder = find_encoder(version)

    encoded_bytes = encoder(card_dic)
    versioned_bytes = prepend_version(version, encoded_bytes)
    if version == 1:
        crc32_len = 4
        packet_len = 128
        padded_bytes = pad(versioned_bytes, packet_len, crc32_len)
        final_bytes = v1_append_crc32(padded_bytes)
    else:
        final_bytes = versioned_bytes + crc32_bytes(versioned_bytes)

    return final_bytes


def decode(pkt_bytes):
    '''Parse bytes into a card_data dic.'''
    if not v1_is_packet_valid(pkt_bytes) and not v2_is_packet_valid(pkt_bytes):
        return None

    version = pkt_bytes[0]
    dic = find_decoder(version)(pkt_bytes[1:])
    dic['version'] = version
    return dic


# v1/v2 Layout / Format

V1_LEN = 117


def v1_defaults():
    return {
        'version': 1,
        'type': 1,
        'serial_number': '0000000001',
        'expiration_date': 1.4e9,
        'guaranteed_injections': 100,
        'max_injections': 200,
        'max_injections_per_batch': 25,
        'max_batches': 10,
        'max_batch_interval': 60,
        'batch_dates': [],
        'batch_injections': []}


def v1_append_crc32(payload_bytes):
    pack_args = [v1_fmt_packet()] + payload_bytes + [crc32(payload_bytes)]
    return str_to_list(struct.pack(*pack_args))


def v1_decode(v1_bytes):
    data_str = list_to_str(v1_bytes[:V1_LEN])
    dic = {}
    items = struct.unpack(v1_fmt(), data_str)
    dic['version'] = 1
    dic['type'] = items[0]
    dic['serial_number'] = serial_decode(items[1:6])
    dic['expiration_date'] = items[6]
    dic['guaranteed_injections'] = items[7]
    dic['max_injections'] = items[8]
    dic['max_injections_per_batch'] = items[9]
    dic['max_batches'] = items[10]
    dic['max_batch_interval'] = items[11]
    num_batches = items[12]
    dic['batch_dates'] = items[13:33][:num_batches]
    dic['batch_injections'] = items[33:53][:num_batches]
    return dic


def v1_encode(card_dic):
    '''Encode a card dict as a list of bytes.'''

    num_batches = len(card_dic['batch_dates'])
    assert num_batches == len(card_dic['batch_injections'])

    log_len = 20

    pack_args = (
        [v1_fmt()] +
        [card_dic['type']] +
        serial_encode(card_dic['serial_number']) +
        [card_dic['expiration_date']] +
        [card_dic['guaranteed_injections']] +
        [card_dic['max_injections']] +
        [card_dic['max_injections_per_batch']] +
        [card_dic['max_batches']] +
        [card_dic['max_batch_interval']] +
        [num_batches] +
        batch_pad(card_dic['batch_dates'], num_batches, log_len) +
        batch_pad(card_dic['batch_injections'], num_batches, log_len))

    return str_to_list(struct.pack(*pack_args))


def v1_fmt():
    return ''.join([
        '!',    # use network byte order
        'b',    # type
        '5B',   # serial number
        'i',    # expiration date (limit)
        'B',    # guaranteed injections (limit)
        'B',    # max injections (limit)
        'B',    # max injections per batch (limit)
        'B',    # max batches (limit)
        'H',    # max batch interval (limit)
        'B',    # number of batches
        '20i',  # batch dates
        '20B'   # injections per batch
    ])


def v1_fmt_packet():
    return ''.join([
        '!',        # use network byte order
        '124B',     # payload
        'I',        # CRC32
    ])


#
# Schema v2
#

# See doc/schema.ods
V2_LEN = 137
V2_MAX_LOG_ENTRIES = 38

V2_MAX_DATE_VALUE = (2 ** 13) - 1
V2_BIT_POS_UTC_OFFSET = 1 << 13
V2_BIT_CLEAN = 1 << 14
V2_BIT_ERROR = 1 << 15
V2_DAYS_MASK = (2 ** 13) - 1

V2_ENFORCE_BITS = {
    'expiration_date': 1 << 0,
    'guaranteed_injections': 1 << 1,
    'max_injections': 1 << 2,
    'max_injections_per_batch': 1 << 3,
    'max_batches': 1 << 4}


def v1_is_packet_valid(pkt_bytes):
    if len(pkt_bytes) < 128:
        return False
    items = struct.unpack(v1_fmt_packet(), list_to_str(pkt_bytes[:128]))
    payload = items[:-1]
    pkt_crc = items[-1]
    return pkt_crc == crc32(payload)


def v2_decode(v2_bytes):
    items = struct.unpack(v2_fmt(), list_to_str(v2_bytes[:V2_LEN]))
    dic = {}
    dic['version'] = 2
    dic['type'] = items[0]
    dic['enforce'] = v2_decode_enforce(items[1])
    dic['serial_number'] = serial_decode(items[2:7])
    dic['expiration_date'] = ndays_to_posixts(abs(items[7]))
    dic['guaranteed_injections'] = items[8]
    dic['max_injections'] = items[9]
    dic['max_injections_per_batch'] = items[10]
    dic['max_batches'] = items[11]
    dic['num_injections'] = items[12]
    dic['num_batches'] = items[13]
    num_log_entries = items[14]

    dates_start = 15
    injections_start = dates_start + V2_MAX_LOG_ENTRIES
    encoded_dates = items[dates_start: dates_start + num_log_entries]
    injections = items[injections_start: injections_start + num_log_entries]

    batch_log = []
    for encoded_date, num_injections in zip(encoded_dates, injections):
        time_t, is_clean, is_error = v2_decode_date_bits(encoded_date)
        batch_log.append({
            'date': time_t,
            'injections': num_injections,
            'clean': is_clean,
            'error': is_error})

    dic['batch_log'] = batch_log

    return dic


def v2_encode(card_dic):
    '''Encode a card dict as a list of bytes.'''

    log_len = len(card_dic['batch_log'])
    expiration_ndays = posixts_to_ndays(card_dic['expiration_date'])

    limits_and_counters = [

        expiration_ndays,
        card_dic['guaranteed_injections'],
        card_dic['max_injections'],
        card_dic['max_injections_per_batch'],
        card_dic['max_batches'],
        card_dic['num_injections'],
        card_dic['num_batches'],
        log_len]

    log = card_dic['batch_log']
    injections = [l['injections'] for l in log]
    dates = [v2_encode_date(l['date'], l['clean'], l['error']) for l in log]

    pack_args = (
        [v2_fmt()] +
        [card_dic['type']] +
        [v2_encode_enforce(card_dic['enforce'])] +
        serial_encode(card_dic['serial_number']) +
        limits_and_counters +
        batch_pad(dates, log_len, V2_MAX_LOG_ENTRIES) +
        batch_pad(injections, log_len, V2_MAX_LOG_ENTRIES))

    return str_to_list(struct.pack(*pack_args))


def v2_encode_date(atime_t, clean, error):
    '''Not a function. Uses operating system timezone.'''
    return v2_encode_date_fn(atime_t, clean, error, tzinfo=get_local_tzinfo())


def v2_encode_date_fn(atime_t, clean, error, tzinfo):
    '''Encode a timestamp and 2 status bits in a 16-bit value, lossily.

    Make it all fit by only recording the day portion of the timestamp.
    '''
    pos_utc_offset = is_utc_offset_positive(atime_t, tzinfo)
    noon_t = stomp_hour_to_noon_local(atime_t, tzinfo)
    encoded_date = posixts_to_ndays(noon_t)
    assert encoded_date <= V2_MAX_DATE_VALUE
    if clean:
        encoded_date |= V2_BIT_CLEAN
    if error:
        encoded_date |= V2_BIT_ERROR
    if pos_utc_offset:
        encoded_date |= V2_BIT_POS_UTC_OFFSET
    return encoded_date


def v2_decode_date_bits(encoded_date):
    '''Decode an encoded 16-bit value into a date, and 2 booleans.'''
    decoded_t = ndays_to_posixts(encoded_date & V2_DAYS_MASK)
    decoded_dt = dt.datetime.fromtimestamp(decoded_t, pytz.UTC)

    if encoded_date & V2_BIT_POS_UTC_OFFSET:
        adjusted_dt = decoded_dt + dt.timedelta(days=1)
    else:
        adjusted_dt = decoded_dt

    return (dt_to_time_t(adjusted_dt),
            bool(encoded_date & V2_BIT_CLEAN),
            bool(encoded_date & V2_BIT_ERROR))


def v2_encode_enforce(dic):
    val = 0
    for key in V2_ENFORCE_BITS:
        val |= V2_ENFORCE_BITS[key] if dic[key] else 0
    return val


def v2_decode_enforce(enforce_val):
    dic = {}
    for key, val in V2_ENFORCE_BITS.items():
        dic[key] = bool(enforce_val & val)
    return dic


def v2_defaults(cartridge_type):
    defaults = {
        'version': 2,
        'type': 1,
        'serial_number': '0000000001',
        'expiration_date': v2_default_expiration(),
        'guaranteed_injections': 100,
        'max_injections': 200,
        'max_injections_per_batch': 100,
        'max_batches': 20,
        'num_injections': 0,
        'num_batches': 0,
        'batch_log': [],
        'enforce': {
            'expiration_date': True,
            'guaranteed_injections': True,
            'max_injections': True,
            'max_injections_per_batch': True,
            'max_batches': True,
        },
    }
    if cartridge_type == 3:     # CE-SDS
        defaults['type'] = 3
        defaults['max_injections_per_batch'] = 48
        defaults['max_batches'] = 25
    elif cartridge_type == 6:   # CE-SDS Plus
        defaults['type'] = 6
        defaults['max_injections'] = 500
        defaults['max_injections_per_batch'] = 48
        defaults['max_batches'] = 25

    return defaults


def v2_fmt():
    return ''.join([
        '!',    # use network byte order
        'b',    # type
        'b',    # enforce bitmap
        '5B',   # serial number
        'h',    # expiration date (limit)
        'h',    # guaranteed injections (limit)
        'h',    # max injections (limit)
        'h',    # max injections per batch (limit)
        'h',    # max batches (limit)
        'H',    # number of batches
        'H',    # number of injections
        'H',    # number of log entries
        '%dH' % V2_MAX_LOG_ENTRIES,  # batch dates
        '%dB' % V2_MAX_LOG_ENTRIES  # injections per batch
    ])


def v2_fmt_packet():
    return ''.join([
        '!',        # use network byte order
        '138B',     # payload
        'I',        # CRC32
    ])


def v2_is_packet_valid(pkt_bytes):
    if len(pkt_bytes) < V2_LEN + VERSION_LEN + CRC_LEN:
        return False
    items = struct.unpack(v2_fmt_packet(), list_to_str(pkt_bytes[:142]))
    payload = items[:-1]
    pkt_crc = items[-1]
    return pkt_crc == crc32(payload)


def v2_default_expiration():
    today = dt.date.today()
    expiration_date = today.replace(year=today.year + 1)
    return date_to_posixts(expiration_date)


# v1/v2 Conversions

V1_V2_KEYS = [
    'type', 'serial_number', 'expiration_date', 'guaranteed_injections',
    'max_injections', 'max_injections_per_batch', 'max_batches']


def v1_to_v2(v1_dic):
    v2_dic = {}
    v2_dic['version'] = 2
    for key in V1_V2_KEYS:
        v2_dic[key] = v1_dic[key]

    v2_dic['num_batches'] = len(v1_dic['batch_dates'])
    v2_dic['enforce'] = {
        'expiration_date': True,
        'guaranteed_injections': True,
        'max_injections': True,
        'max_injections_per_batch': True,
        'max_batches': True}

    v2_dic['num_injections'] = sum(v1_dic['batch_injections'])

    v2_dic['batch_log'] = []
    for date, injs in zip(v1_dic['batch_dates'], v1_dic['batch_injections']):
        v2_dic['batch_log'].append(
            {'date': date,
             'injections': injs,
             'clean': False,
             'error': False})
    return v2_dic


INVALID = 0


def v2_to_v1(v2_dic):
    v1_dic = {}
    v1_dic['version'] = 1
    for key in V1_V2_KEYS:
        v1_dic[key] = v2_dic[key]

    # The max_batch_interval isn't part of the v2 schema.
    v1_dic['max_batch_interval'] = INVALID

    v1_dic['batch_dates'] = [d['date'] for d in v2_dic['batch_log']]
    v1_dic['batch_injections'] = [d['injections'] for d in v2_dic['batch_log']]
    return v1_dic


# Utility Functions


def batch_pad(a_list, log_len, max_log_len):
    if log_len > max_log_len:
        raise ValueError(
            'log_len %s must be <= max_log_len %s' % (log_len, max_log_len))
    return list(a_list) + [0] * (max_log_len - log_len)


def crc32(data_bytes):
    '''Determine if a tag has been initialized and has valid data.'''
    data_str = list_to_str(data_bytes)
    return binascii.crc32(data_str) & 0xffffffff


def crc32_bytes(data_bytes):
    return str_to_list(struct.pack('!I', crc32(data_bytes)))


def find_decoder(version):
    return find_func('v{0}_decode'.format(version))


def find_encoder(version):
    return find_func('v{0}_encode'.format(version))


def find_func(func_name):
    return getattr(sys.modules[__name__], func_name)


def hex2(val):
    return '{0:02x}'.format(val)


def list_to_str(list_of_bytes):
    return b''.join([six.int2byte(x) for x in list_of_bytes])


def str_to_list(data_str):
    return list(six.iterbytes(data_str))


def pad(list_of_bytes, tag_length, crc_length):
    data_length = tag_length - crc_length
    list_of_bytes += [0] * (data_length - len(list_of_bytes))
    return list_of_bytes


def unpad(list_of_bytes, data_length):
    return list_of_bytes[:data_length]


def prepend_version(version, encoded_bytes):
    # Don't need struct for this.
    return [version] + encoded_bytes


def serial_decode(serial_bcd_list):
    assert len(serial_bcd_list) == 5
    return ''.join([hex2(val) for val in serial_bcd_list])


def serial_encode(serial_num_str):
    assert len(serial_num_str) == 10

    def encode_gen():
        for pair in mi.grouper(2, serial_num_str):
            hex_pair = ''.join(pair)
            yield int(hex_pair, 16)

    return list(encode_gen())

#
# Time and timezone conversions
#


JAN_1_2015_UTC = dt.datetime(2015, 1, 1, tzinfo=pytz.UTC)


# Note: The Python 3.3 datetime library added a timestamp method that
# appears to do the same thing as this function.
def dt_to_time_t(dt_object):
    '''Convert a datetime object into a time_t value.'''
    return calendar.timegm(dt_object.timetuple())


def ndays_to_posixts(ndays):
    '''Take days since Jan 1 2015 UTC and return a time_t.'''
    if ndays < 0:
        raise ValueError('ndays must be greater than or equal to 0.')
    return dt_to_time_t(JAN_1_2015_UTC + dt.timedelta(ndays))


def posixts_to_ndays(timestamp):
    '''Return days since 2015-01-01. If before, return 2015-01-01.

    timestamp is a POSIX timestamp, such as is returned by time.time().
    '''
    timestamp_dt = dt.datetime.fromtimestamp(timestamp, tz=pytz.UTC)
    normalized_timestamp_dt = timestamp_dt.replace(hour=12)
    diff_dt = normalized_timestamp_dt - JAN_1_2015_UTC
    return max(0, diff_dt.days)


# The v2_encode and v2_decode functions expose the expiration date to clients
# of the library as a posix timestamp. However, the cartridge cannot actually
# store a posix timestamp losslessly. Thus the API contact is something like:
#
#     client: Here's an expiration date, represented as a posix timestamp.
#
#     nfc library: Thanks. I'll store a rough approximation of that timestamp
#     on the cartridge, and the next time that you read the cartridge, I'll
#     return that approximation to you.
#
#     client: Approximation?! Grrrr.
#
# Obviously, this is not ideal. However, there is a solution. The client
# doesn't need an exact timestamp to be stored. In fact, the client doesn't
# care about the *time* of the expiration. The client just wants the *date*
# stored accurately.
#
# To provide this capability, without breaking compatibility with existing
# cartridges, we provide two additional functions.
#
#   date_to_posixts
#       Convert a date into a timestamp that *can* be stored on the cartridge
#       exactly, and retrieved later with no change.
#
#   posixts_to_date
#       Convert a timestamp from a cartridge into a date.
#
# These functions are pure and should be unaffected by the local time and
# timezone.
#
# The plan is to use these new functions in "RFID Fixture GUI", the
# Windows-based application that drives the new cartridge-writing fixture. The
# new fixture locks the cartridge in place during writing, and verifies the
# cartridge by reading the NFC data after writing it.
#
# In principal, similar functions could be written in JavaScript for the
# cartridge-editor webapp, but that doesn't appear to be needed. The
# cartridge-editor webapp is currently used to write the expiration date on
# Saber cartridges, and the extra precision isn't needed there.


def date_to_posixts(date):
    '''Convert a datetime.date into a timestamp that can be stored losslesly
    on a cartridge.'''
    assert date.year >= 2015
    a_dt = dt.datetime(date.year, date.month, date.day, tzinfo=pytz.UTC)
    return dt_to_time_t(a_dt)


def posixts_to_date(posixts):
    '''Convert a timestamp from a cartridge to a date.'''
    return dt.datetime.fromtimestamp(posixts, tz=pytz.UTC).date()


def is_utc_offset_positive(atime_t, tzinfo):
    '''Not a pure function. Results may vary.'''
    a_dt = dt.datetime.fromtimestamp(atime_t)
    if tzinfo.zone == 'UTC':
        return False
    return tzinfo.utcoffset(a_dt, is_dst=False).days < 0


def get_local_tzinfo():
    return get_localzone()


def stomp_hour_to_noon_local(atime_t, tzinfo):
    local_dt = dt.datetime.fromtimestamp(atime_t, tzinfo)
    stomped_dt = local_dt.replace(hour=12, minute=0, second=0)
    return dt_to_time_t(stomped_dt)
