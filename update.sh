#!/bin/bash

URL="https://iplists.firehol.org/files/firehol_level1.netset"
OUT="blocklist.netset"

echo "[+] Downloading blocklist..."

curl -s $URL | grep -v '^#' | sed '/^$/d' > $OUT

echo "[+] Done. Lines:"
wc -l $OUT
