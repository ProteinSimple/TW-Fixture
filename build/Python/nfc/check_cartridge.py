'''Retrieve NFC data from an instrument and check data consistency.'''
from __future__ import absolute_import
from __future__ import print_function

import datetime
import requests
import sys


def main():
    if len(sys.argv) != 2:
        print('Usage: {} HOSTNAME'.format(sys.argv[0]), file=sys.stderr)
        return 2
    hostname = sys.argv[1]

    try:
        resp = requests.get('http://{}:8080/nfc/status'.format(hostname))
    except requests.exceptions.ConnectionError:
        print('{} {}: Cannot connect'.format(timestamp(), hostname),
              file=sys.stderr)
        return 1

    try:
        fields = resp.json()['cards'][0]['fields']
    except (IndexError, KeyError):
        print('{} {}: No cartridge.'.format(timestamp(), hostname),
              file=sys.stderr)
        return 0

    error_msgs = []

    num_logged_batches = len(
        [b for b in fields['batch_log'] if not b['clean']])

    if num_logged_batches != fields['num_batches']:
        error_msgs.append(
            'num_batches: {}, non-clean batches in log: {}'.format(
                fields['num_batches'], len(fields['batch_log'])))

    calculated_injections = sum([b['injections'] for b in fields['batch_log']])
    if calculated_injections != fields['num_injections']:
        error_msgs.append(
            'num_injections: {}, injections in batch log: {}'.format(
                fields['num_injections'], calculated_injections))

    if error_msgs:
        print('{} {}: Inconsistent cartridge data.\n\t{}'.format(
            timestamp(),
            hostname,
            '\n\t'.join(error_msgs)),
            file=sys.stderr)
        return 1

    return 0


def timestamp():
    return datetime.datetime.isoformat(datetime.datetime.now())


if __name__ == '__main__':
    sys.exit(main())
