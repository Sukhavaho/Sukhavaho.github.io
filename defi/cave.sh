#!/bin/bash

# Usage:
#   ./cave.sh                         (stdin -> stdout)
#   ./cave.sh input_file              (file -> stdout)
#   ./cave.sh input_file output_file  (file -> file)

# 1. Handle Password
# If CAVE_PASS_FILE is set, use it.
# Otherwise, prompt ONCE and pass via FD.
PASS_ARGS=()
if [ -n "$CAVE_PASS_FILE" ]; then
    PASS_ARGS=(-pass "file:$CAVE_PASS_FILE")
else
    # Prompt user once
    # We use /dev/tty to ensure we read from terminal even if stdin is redirected
    if [ -t 0 ] && [ "$#" -eq 0 ]; then
         # This case (TTY input, no args) typically means user forgot to pipe something
         # But technically they could type secret into stdin.
         # However, user explicitly asked to "detect nothing in stdin".
         # [ -t 0 ] true means stdin is a terminal, so "nothing piped".
         echo "Error: No input provided. Pipe data to stdin or provide a file." >&2
         exit 1
    fi

    # Read password from TTY to avoid interfering with stdin data stream
    echo -n "enter AES-256-CBC encryption password: " >/dev/tty
    read -rs PASSWORD </dev/tty
    echo >/dev/tty # Newline

    # Use fd:3 to pass password securely to openssl
    PASS_ARGS=(-pass fd:3)
fi

# Function to run openssl with password handling
run_openssl() {
    if [ -n "$CAVE_PASS_FILE" ]; then
        openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 -md sha512 "${PASS_ARGS[@]}" "$@"
    else
        # Feed password to FD 3
        openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 -md sha512 "${PASS_ARGS[@]}" "$@" 3<<<"$PASSWORD"
    fi
}

if [ "$#" -eq 0 ]; then
    # Stdin -> Stdout
    # Check if we are reading from terminal (empty pipe detection logic requested)
    if [ -t 0 ]; then
        echo "Error: No input provided. Pipe data to stdin or provide a file." >&2
        exit 1
    fi
    run_openssl
elif [ "$#" -eq 1 ]; then
    # File -> Stdout
    if [ ! -f "$1" ]; then
        echo "Error: Input file '$1' not found." >&2
        exit 1
    fi
    run_openssl -in "$1"
elif [ "$#" -eq 2 ]; then
    # File -> File
    if [ ! -f "$1" ]; then
        echo "Error: Input file '$1' not found." >&2
        exit 1
    fi
    run_openssl -in "$1" -out "$2"
else
    echo "Usage: $0 [input_file] [output_file]" >&2
    exit 1
fi


