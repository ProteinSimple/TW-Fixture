#!/bin/sh
set -o errexit
set -o nounset
set -o xtrace

crossbar start --cbdir webapp/crossbar --config dev.json
