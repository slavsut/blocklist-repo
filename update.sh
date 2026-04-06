#!/bin/bash

URL="https://iplists.firehol.org/files/firehol_level1.netset"
OUT="blocklist.netset"

curl -s $URL | grep -v '^#' | sed '/^$/d' > $OUT
