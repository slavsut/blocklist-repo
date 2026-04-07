#!/bin/bash

URL="https://iplists.firehol.org/files/firehol_level2.netset"
OUT="blocklist.firehol_attacks_level2.netset"

echo "[+] Downloading..."

curl -A "Mozilla/5.0" -sf $URL \
> $OUT

echo "[+] Done:"
wc -l $OUT
