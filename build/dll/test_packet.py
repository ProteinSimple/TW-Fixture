import calendar
import datetime as dt
import dateutil as du
import dateutil.rrule as dur

from nose.tools import assert_raises, eq_, ok_
import pytz

import nfc.packet as packet

# This is an arbitrary date far in the future, past when we expect this
# software to be in use.
FAR_FUTURE = dt.datetime(2050, 1, 1, tzinfo=pytz.UTC)


def test_encode():
    # Test v1 path
    v1_bytes = packet.encode(get_v1_dic())
    eq_(len(v1_bytes), 128)

    # Test v2 path
    v2_bytes = packet.encode(get_v2_dic())
    eq_(len(v2_bytes), packet.V2_LEN + packet.VERSION_LEN + packet.CRC_LEN)


def test_v1_append_crc32():
    payload_bytes = [i for i in range(0, 124)]
    pkt_bytes = packet.v1_append_crc32(payload_bytes)
    eq_(len(pkt_bytes), 128)
    eq_(payload_bytes, pkt_bytes[:-4])
    # This isn't a verification of the actual CRC values. It just checks that
    # they haven't changed.
    eq_(pkt_bytes[124], 84)
    eq_(pkt_bytes[125], 90)
    eq_(pkt_bytes[126], 116)
    eq_(pkt_bytes[127], 192)


def test_crc_round_trip():
    payload_bytes = (
        [0x1, 0x98, 0x76, 0x54, 0x32, 0x10] +
        [0x0] * 118)
    packet_bytes = packet.v1_append_crc32(payload_bytes)
    ok_(packet.v1_is_packet_valid(packet_bytes))


def get_v1_dic():
    return {
        'version': 1,
        'type': 1,
        'serial_number': '9876543210',
        'expiration_date': 2000000,
        'guaranteed_injections': 100,
        'max_injections': 200,
        'max_injections_per_batch': 5,
        'max_batches': 25,
        'max_batch_interval': 4000,
        'batch_dates': (1001, 1002, 1003, 1004),
        'batch_injections': (16, 24, 43, 2)}


def test_v1_encode():
    pkt_bytes = packet.v1_encode(get_v1_dic())
    # Just tes the first few fields on a byte-by-byte basis. For the rest,
    # use round-trip testing.
    eq_(pkt_bytes[:6], [0x1, 0x98, 0x76, 0x54, 0x32, 0x10])


def test_v1_roundtrip():
    pkt_bytes = packet.v1_encode(get_v1_dic())
    eq_(packet.v1_decode(pkt_bytes), get_v1_dic())


def get_v2_dic():
    return {
        'version': 2,
        'type': 1,                      # 0-255.
        'serial_number': '9876543210',  # string of exactly 10 decimal
                                        # digits
        'expiration_date': 3999974400,  # time_t Jan 1 2015 - Jan 1 2100
        'guaranteed_injections': 100,   # 0 - 32000
        'max_injections': 200,          # 0 - 32000
        'max_injections_per_batch': 5,  # 0 - 32000
        'max_batches': 25,              # 0 - 32000
        'num_injections': 13,           # 0 - 65000
        'num_batches': 2,               # 0 - 65000

        # batch_log contains at most 39 entries.
        # - date is a time_t in Jan 1 2015 - Jan 1 2100
        # - injections are in the range 0 - 255.
        'batch_log': [
            {'date': 1.50e9, 'injections': 16, 'clean': False, 'error': False},
            {'date': 1.51e9, 'injections': 0, 'clean': True, 'error': False},
            {'date': 1.52e9, 'injections': 43, 'clean': False, 'error': True},
            {'date': 1.53e9, 'injections':  2, 'clean': False, 'error': False},
        ],
        'enforce': {
            'expiration_date': True,
            'guaranteed_injections': False,
            'max_injections': False,
            'max_injections_per_batch': False,
            'max_batches': True,
        },
    }


def test_v2_encoded_length():
    encoded_bytes = packet.v2_encode(get_v2_dic())
    eq_(len(encoded_bytes), packet.V2_LEN)


def test_v2_scalars():
    decoded = packet.v2_decode(packet.v2_encode(get_v2_dic()))
    for key in [
            'type', 'serial_number', 'expiration_date',
            'guaranteed_injections',
            'max_injections', 'max_injections_per_batch', 'max_batches',
            'num_injections', 'num_batches']:

        eq_(get_v2_dic()[key], decoded[key])


def test_v2_negative_scalars():
    v2_dic = get_v2_dic()
    v2_dic['guaranteed_injections'] = -1
    v2_dic['max_injections'] = -2
    v2_dic['max_injections_per_batch'] = -3
    v2_dic['max_batches'] = -4
    decoded = packet.v2_decode(packet.v2_encode(v2_dic))
    eq_(decoded['guaranteed_injections'], -1)
    eq_(decoded['max_injections'], -2)
    eq_(decoded['max_injections_per_batch'], -3)
    eq_(decoded['max_batches'], -4)


def test_v2_enforce():
    decoded = packet.v2_decode(packet.v2_encode(get_v2_dic()))
    eq_(get_v2_dic()['enforce'], decoded['enforce'])


def test_v2_log():
    decoded = packet.v2_decode(packet.v2_encode(get_v2_dic()))
    for orig, decoded in zip(get_v2_dic()['batch_log'], decoded['batch_log']):
        eq_(orig['injections'], decoded['injections'])
        eq_(orig['clean'], decoded['clean'])
        eq_(orig['error'], decoded['error'])
        # For v2, we aggressively munge the timestamp, so that we can store
        # it in 14 bits, and get the local calendar date back. As a result
        # after the roundtrip, the original value may have changed by up
        # to 48 hours.
        ok_(orig['date'] - decoded['date'] < 48 * 60 * 60)


def test_v2_encode_enforce():
    dic_all_false = {
        'expiration_date': False,
        'guaranteed_injections': False,
        'max_injections': False,
        'max_injections_per_batch': False,
        'max_batches': False}
    eq_(packet.v2_encode_enforce(dic_all_false), 0)

    dic_all_true = {
        'expiration_date': True,
        'guaranteed_injections': True,
        'max_injections': True,
        'max_injections_per_batch': True,
        'max_batches': True}
    eq_(packet.v2_encode_enforce(dic_all_true), 0b00011111)

    dic = {
        'expiration_date': True,
        'guaranteed_injections': False,
        'max_injections': True,
        'max_injections_per_batch': True,
        'max_batches': False}
    eq_(packet.v2_encode_enforce(dic), 0b00001101)


def test_v2_enforce_roundtrip():
    dic = {
        'expiration_date': True,
        'guaranteed_injections': False,
        'max_injections': True,
        'max_injections_per_batch': True,
        'max_batches': False}
    eq_(packet.v2_decode_enforce(packet.v2_encode_enforce(dic)), dic)


def test_v1_encode_decode_roundtrip():
    dic_with_version = dict(get_v1_dic())
    dic_with_version['version'] = 1

    pkt_bytes = packet.encode(dic_with_version)
    eq_(packet.decode(pkt_bytes), dic_with_version)


def test_v1_is_packet_valid():
    bad_bytes = [i for i in range(0, 128)]
    ok_(not packet.v1_is_packet_valid(bad_bytes))

    good_bytes = [i for i in range(0, 124)]
    good_bytes_with_crc = packet.v1_append_crc32(good_bytes)
    ok_(packet.v1_is_packet_valid(good_bytes_with_crc))
    eq_(len(good_bytes_with_crc), 128)

    good_bytes_with_padding = packet.pad(good_bytes_with_crc, 144, 4)
    ok_(packet.v1_is_packet_valid(good_bytes_with_padding))


def test_serial_encode():
    eq_(packet.serial_encode('0123456789'), [0x01, 0x23, 0x45, 0x67, 0x89])
    eq_(packet.serial_encode('0000000001'), [0x00, 0x00, 0x00, 0x00, 0x01])
    eq_(packet.serial_encode('0000000000'), [0x00, 0x00, 0x00, 0x00, 0x00])
    eq_(packet.serial_encode('1000000000'), [0x10, 0x00, 0x00, 0x00, 0x00])


def test_serial_decode():
    eq_(packet.serial_decode([0x01, 0x23, 0x45, 0x67, 0x89]), '0123456789')
    eq_(packet.serial_decode([0x00, 0x00, 0x00, 0x00, 0x00]), '0000000000')
    eq_(packet.serial_decode([0x10, 0x00, 0x00, 0x00, 0x00]), '1000000000')
    eq_(packet.serial_decode([0x01, 0x00, 0x00, 0x00, 0x00]), '0100000000')


def test_full_batch_history():
    v1_dic = {
        'version': 1,
        'type': 1,
        'serial_number': '9876543210',
        'expiration_date': 2000000,
        'guaranteed_injections': 100,
        'max_injections': 200,
        'max_injections_per_batch': 5,
        'max_batches': 25,
        'max_batch_interval': 4000,
        'batch_dates': tuple([1001] * 20),
        'batch_injections': tuple([16] * 20)
    }

    pkt_bytes = packet.v1_encode(v1_dic)
    eq_(packet.v1_decode(pkt_bytes), v1_dic)


def test_dt_to_time_t():
    beginning_of_posix_time_dt = dt.datetime(1970, 1, 1, tzinfo=pytz.UTC)
    eq_(0, packet.dt_to_time_t(beginning_of_posix_time_dt))

    a_bit_later = dt.datetime(1970, 1, 1, 0, 0, 5, tzinfo=pytz.UTC)
    eq_(5, packet.dt_to_time_t(a_bit_later))


def test_posix_to_ndays_jan1():
    jan_1_2014_t = packet.dt_to_time_t(
        dt.datetime(2014, 1, 1, tzinfo=pytz.UTC))
    eq_(packet.posixts_to_ndays(jan_1_2014_t), 0)


def test_ndays_to_posixts():
    # 15 days after Jan 1 is Jan 16.
    jan_15_2015_t = packet.dt_to_time_t(
        dt.datetime(2015, 1, 16, tzinfo=pytz.UTC))
    eq_(packet.ndays_to_posixts(15), jan_15_2015_t)

    jan_1_2015_t = packet.dt_to_time_t(
        dt.datetime(2015, 1, 1, tzinfo=pytz.UTC))
    eq_(packet.ndays_to_posixts(0), jan_1_2015_t)

    jan_1_2016_t = packet.dt_to_time_t(
        dt.datetime(2016, 1, 1, tzinfo=pytz.UTC))
    eq_(packet.ndays_to_posixts(365), jan_1_2016_t)


def test_posixts_to_ndays():
    jan_1_2015_t = packet.dt_to_time_t(
        dt.datetime(2015, 1, 1, tzinfo=pytz.UTC))
    eq_(packet.posixts_to_ndays(jan_1_2015_t), 0)

    jan_1_2016_t = packet.dt_to_time_t(
        dt.datetime(2016, 1, 1, tzinfo=pytz.UTC))
    eq_(packet.posixts_to_ndays(jan_1_2016_t), 365)


def test_ndays_utc_round_trip():
    # For a round-trip calculation to work, you must choose a number that
    # is evenly divisible by (24 * 60 * 60)
    utc_date = 3999974400
    eq_(packet.ndays_to_posixts(packet.posixts_to_ndays(utc_date)), utc_date)


def test_expiration_date():
    '''Comprehensively test that dates are converted to timestamps and back.'''
    earliest = packet.JAN_1_2015_UTC
    for a_dt in dur.rrule(du.rrule.DAILY,
                          dtstart=earliest,
                          until=FAR_FUTURE):
        ts = packet.date_to_posixts(a_dt)
        eq_(a_dt.date(), packet.posixts_to_date(ts))


def test_expiration_date_ndays():
    '''Comprehensively test that dates are converted to ndays and back.'''
    # Test every date from the first date that can be represented using ndays
    # to an arbitrary date in the future.
    earliest = packet.JAN_1_2015_UTC
    until = FAR_FUTURE

    # Generate every date in the range.
    for a_dt in dur.rrule(du.rrule.DAILY, dtstart=earliest, until=until):
        ts_in = packet.date_to_posixts(a_dt)
        ndays = packet.posixts_to_ndays(ts_in)
        ts_out = packet.ndays_to_posixts(ndays)
        eq_(a_dt.date(), packet.posixts_to_date(ts_out))


def test_expiration_is_invertible():
    # It can be surprising if the expiration date changes when you write
    # it to the cartridge and read it back. So, let's at least make sure
    # that the default expiration date can be read back without changing.
    expiration_date = packet.v2_defaults(1)['expiration_date']
    eq_(expiration_date,
        packet.ndays_to_posixts(packet.posixts_to_ndays(expiration_date)))


def test_v2_defaults_are_invertible():
    # While we're at it, let's just check that all of the defaults
    # can make the round trip through encoding and decoding.
    orig = packet.v2_defaults(1)
    eq_(orig, packet.decode(packet.encode(orig)))


def test_v2_encode_date_fn():
    day1_t = packet.dt_to_time_t(packet.JAN_1_2015_UTC)
    eq_(packet.v2_encode_date_fn(day1_t, False, False, pytz.UTC), 0)
    tz = pytz.timezone('Etc/GMT+1')
    eq_(packet.v2_encode_date_fn(day1_t, False, False, tz), 1 << 13)
    eq_(packet.v2_encode_date_fn(day1_t, True, False, pytz.UTC), 1 << 14)
    eq_(packet.v2_encode_date_fn(day1_t, False, True, pytz.UTC), 1 << 15)

    a_year_t = packet.dt_to_time_t(dt.datetime(2016, 1, 1, tzinfo=pytz.UTC))
    eq_(packet.v2_encode_date_fn(a_year_t, False, False, pytz.UTC), 365)


def test_v2_decode_date_bits():
    # Use round-trip tests, as there's no obvious way to create encoded
    # values.
    a_day_t = packet.dt_to_time_t(dt.datetime(2015, 6, 15, tzinfo=pytz.UTC))

    encoded1 = packet.v2_encode_date_fn(a_day_t, True, False, pytz.UTC)
    eq_(packet.v2_decode_date_bits(encoded1), (a_day_t, True, False))

    encoded2 = packet.v2_encode_date_fn(a_day_t, False, True, pytz.UTC)
    eq_(packet.v2_decode_date_bits(encoded2), (a_day_t, False, True))


def test_batch_pad():
    eq_(packet.batch_pad([1, 2], 0, 0), [1, 2])
    eq_(packet.batch_pad([1, 2], 1, 1), [1, 2])
    eq_(packet.batch_pad([1, 2], 1, 2), [1, 2, 0])
    assert_raises(ValueError, packet.batch_pad, [], 2, 1)


def test_decode_bad_bytes():
    eq_(packet.decode([0x1, 0x2, 0x3, 0x4]), None)


def test_v1_to_v2():
    expected_v2 = {
        'version': 2,
        'type': 1,
        'serial_number': '9876543210',
        'expiration_date': 2000000,
        'guaranteed_injections': 100,
        'max_injections': 200,
        'max_injections_per_batch': 5,
        'max_batches': 25,
        'num_injections': 85,
        'num_batches': 4,

        'batch_log': [
            {'date': 1001, 'injections': 16,
             'clean': False, 'error': False},
            {'date': 1002, 'injections': 24,
             'clean': False, 'error': False},
            {'date': 1003, 'injections': 43,
             'clean': False, 'error': False},
            {'date': 1004, 'injections':  2,
             'clean': False, 'error': False},
        ],
        'enforce': {
            'expiration_date': True,
            'guaranteed_injections': True,
            'max_injections': True,
            'max_injections_per_batch': True,
            'max_batches': True}}

    converted_v2 = packet.v1_to_v2(get_v1_dic())
    # First just check for matching keys. Then compare values.
    eq_(set(expected_v2.keys()) - set(converted_v2.keys()), set())
    eq_(converted_v2, expected_v2)


def test_v2_to_v1():
    expected_v1 = {
        'version': 1,
        'type': 1,
        'serial_number': '9876543210',
        'expiration_date': 3999974400,
        'guaranteed_injections': 100,
        'max_injections': 200,
        'max_injections_per_batch': 5,
        'max_batches': 25,
        'max_batch_interval': packet.INVALID,
        'batch_dates': [1.50e9, 1.51e9, 1.52e9, 1.53e9],
        'batch_injections': [16, 0, 43, 2]}
    converted_v1 = packet.v2_to_v1(get_v2_dic())
    # First just check for matching keys. Then compare values.
    eq_(set(expected_v1.keys()) - set(converted_v1.keys()), set())
    eq_(converted_v1, expected_v1)


def test_local_calendar():
    # For each timezone and every hour of the day, check that we can
    # go on a roundtrip journey through encoding and decoding, and get the
    # original local date.
    timezones = (
        ['UTC'] +
        ['Etc/GMT-%s' % offset for offset in range(1, 12)] +
        ['Etc/GMT+%s' % offset for offset in range(1, 12)])

    times = (
        [[2016, 1, 1, h, 45] for h in range(24)] +
        [[2016, 2, 28, h, 45] for h in range(24)] +
        [[2016, 2, 29, h, 45] for h in range(24)] +
        [[2016, 12, 31, h, 45] for h in range(24)])

    for tz_str in timezones:
        tzinfo = pytz.timezone(tz_str)

        for tm in times:
            # Start with a local time and timezone.
            local_dt = dt.datetime(*tm, tzinfo=tzinfo)

            # Convert it to UTC.
            utc_dt = local_dt.astimezone(pytz.UTC)

            # Convert it to seconds-since-epoch.
            utc_t = calendar.timegm(utc_dt.timetuple())

            # Encode it.
            utc_encoded = packet.v2_encode_date_fn(utc_t, False, False, tzinfo)

            # Decode it.
            decoded_t, _, _ = packet.v2_decode_date_bits(utc_encoded)

            # Convert it from time_t to a datetime object.
            decoded_dt = dt.datetime.fromtimestamp(decoded_t, tz=tzinfo)

            eq_(local_dt.year, decoded_dt.year, '%s year' % tz_str)
            eq_(local_dt.month, decoded_dt.month, '%s month' % tz_str)
            eq_(local_dt.day, decoded_dt.day, '%s day' % tz_str)
