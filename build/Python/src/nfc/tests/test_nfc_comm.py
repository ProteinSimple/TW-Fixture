'''Test integration with entire NFC stack.

To run these tests, you need to have all of the Python and Debian dependencies
installed, as well as having an NFC reader and tag ready.

To run these tests, use:

    nosetests -sv

as the tests send prompts to stdout to ask the user to make physical changes
to the system.
'''
from __future__ import print_function

from nose.tools import eq_
from nose.plugins.attrib import attr

import nfc.apdu as apdu
import nfc.nfc_comm as nfc_comm


@attr('integration')
def test_nfc():
    with nfc_comm.NFC() as nfc_ctx:
        raw_input("\n\tUnplug tag reader, and press <Enter>.")
        eq_(len(nfc_ctx.get_readers()), 0)
        eq_(len(nfc_ctx.get_readers_with_tags()), 0)

        raw_input("\n\tPlug in tag reader without tag, and press <Enter>.")
        eq_(len(nfc_ctx.get_readers()), 1)
        eq_(len(nfc_ctx.get_readers_with_tags()), 0)

        raw_input("\n\tPlace NFC203 tag, and press <Enter>.")
        eq_(len(nfc_ctx.get_readers()), 1)
        eq_(len(nfc_ctx.get_readers_with_tags()), 1)


@attr('integration')
def test_connection_with_tag():
    raw_input("\n\tConnect reader, place tag, and press <Enter>.")
    with nfc_comm.NFC() as nfc:
        reader = nfc.get_readers_with_tags()[0]
        with nfc_comm.Connection(nfc, reader) as conn:
            eq_(len(conn.transmit(apdu.get_uid())), 9)


@attr('integration')
def test_connection_without_tag():
    raw_input("\n\tConnect reader, place NTAG203, and press <Enter>.")
    with nfc_comm.NFC() as nfc:
        reader = nfc.get_readers_with_tags()[0]
        raw_input("\n\tRemove tag, and press <Enter>.")
        with nfc_comm.Connection(nfc, reader) as conn:
            uid = conn.transmit(apdu.get_uid())
            # If no tags is detected, a message of the expected length is
            # returned with zeros for the UID and a 2-byte error code.
            eq_(len(uid), 9)
            eq_(uid[0:7], [0] * 7)
            eq_(uid[7:9], [105, 130])


@attr('integration')
def test_ntag203_creation():
    raw_input("\n\tConnect reader, place NTAG203, and press <Enter>.")
    with nfc_comm.NFC() as nfc:
        reader = nfc.get_readers_with_tags()[0]
        with nfc_comm.Connection(nfc, reader) as conn:
            tag = nfc_comm.NTAG203(conn)
            # NFC203 tags have 7-byte UIDs. Others tags have different lengths.
            eq_(len(tag.uid), 7)

            # NFC203 tags have 144 bytes of user storage.
            eq_(len(tag.data_bytes), 144)


@attr('integration')
def test_ntag_write_block():
    raw_input("\n\tConnect reader, place NTAG203, and press <Enter>.")
    with nfc_comm.NFC() as nfc:
        reader = nfc.get_readers_with_tags()[0]
        with nfc_comm.Connection(nfc, reader) as conn:
            block_num = nfc_comm.NTAG203.FIRST_BLOCK
            test_data1 = [0x0a, 0x0b, 0x0c, 0x0d]
            test_data2 = [0x10, 0x20, 0x30, 0x40]
            tag = nfc_comm.NTAG203(conn)
            tag.write_block(conn, block_num, test_data1)
            eq_(tag.read_block(conn, block_num), test_data1)
            tag.write_block(conn, block_num, test_data2)
            eq_(tag.read_block(conn, block_num), test_data2)


@attr('integration')
def test_ntag_write_all():
    raw_input("\n\tConnect reader, place NTAG203, and press <Enter>.")
    with nfc_comm.NFC() as nfc:
        reader = nfc.get_readers_with_tags()[0]
        with nfc_comm.Connection(nfc, reader) as conn:
            test_data_bytes = [i for i in range(1, 145)]

            tag = nfc_comm.NTAG203(conn)
            tag.write(conn, test_data_bytes)
            eq_(test_data_bytes, tag.read(conn))


@attr('integration')
def test_get_cards():
    with nfc_comm.NFC() as nfc:
        raw_input("\n\tConnect reader without tag, and press <Enter>.")
        eq_(len(nfc_comm.get_cards(nfc)), 0)
        raw_input("\n\tConnect reader, place tag, and press <Enter>.")
        eq_(len(nfc_comm.get_cards(nfc)), 1)
