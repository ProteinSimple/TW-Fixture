'''APDU commands for Identiv SCM3712 reader and NXP NTAG203.'''
from __future__ import absolute_import
import functools


def apdu(func):
    @functools.wraps(func)
    def to_list(*args, **kwargs):
        return list(bytearray(func(*args, **kwargs)))
    return to_list


@apdu
def get_uid():
    # NTAG203 tags have a 7-byte serial number.
    length = 0x07
    return [0xFF, 0xCA, 0x00, 0x00, length]


@apdu
def get_version():
    return [0xff, 0xef, 0x00, 0x00, 0x1, 0x60]


@apdu
def read_block(block_num):
    return [0xFF, 0xB0, 0x00, block_num, 0x00]


@apdu
def write_block(block_num, data_bytes):
    assert len(data_bytes) == 4
    return [0xFF, 0xD6, 0x00, block_num, 0x04] + list(data_bytes)
