#!/bin/sh

# Usage: ./uncave.sh <input_file>

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

INfile="$1"

if [ ! -f "$INfile" ]; then
    echo "Error: Input file '$INfile' not found."
    exit 1
fi

PASS_OPT=""
if [ -n "$CAVE_PASS_FILE" ]; then
    PASS_OPT="-pass file:$CAVE_PASS_FILE"
fi

# Decrypt to stdout
openssl enc -d -aes-256-cbc -a -pbkdf2 -iter 10000000 -md sha512 $PASS_OPT -in "$INfile"

