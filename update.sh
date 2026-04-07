#!/bin/bash

URL="https://iplists.firehol.org/files/firehol_level1.netset"
OUT="blocklist.netset"

echo "[+] Downloading..."

curl -A "Mozilla/5.0" -sf $URL \
> $OUT

echo "[+] Done:"
wc -l $OUT
