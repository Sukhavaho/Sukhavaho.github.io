# Caving - Cocktail Recipes


## Added AGE. Summary:

Do this in my private repository coconuts after `brew install age`:

### Encrypt

`echo <string> | ./cave.sh > file.txt.cave`
`echo <string> | age -p -a > file.txt.age`


### Decrypt:

`echo <binfile.cave> | ./uncave.sh > file.txt`

`age -d <binfile.age`


### Cave - look in private Coconuts repository in my primary GitHub account

#### Download here:
- [cave.sh](cave.sh)

#### Code:

```
#!/bin/bash

# Check if stdin is a terminal (meaning no input is piped)
if [ -t 0 ]; then
    echo "Error: No input provided. Pipe data to stdin." >&2
    echo "Usage: echo 'secret' | $0 > output.enc" >&2
    exit 1
fi

# Read stdin into a variable to check for emptiness
# Note: This buffers the input in memory.
INPUT="$(cat; echo x)"
INPUT="${INPUT%x}"

if [ -z "$INPUT" ]; then
    echo "Error: Input is empty." >&2
    exit 1
fi

# Prompt for passphrase once
echo -n "enter AES-256-CBC encryption password: " >/dev/tty
read -rs PASSWORD </dev/tty
echo >/dev/tty

# Encrypt using OpenSSL with PBKDF2-SHA512
# -a: Base64 encode (requested as uuencoded result)
echo -n "$INPUT" | openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 -md sha512 -pass fd:3 3<<<"$PASSWORD"
```

### Uncave - look for private Coconuts repository in my primary GitHub account

#### Download here:

- [uncave.sh](uncave.sh)

#### Code:

```
#!/bin/bash

# Check if stdin is a terminal (meaning no input is piped)
if [ -t 0 ]; then
    echo "Error: No input provided. Pipe ciphertext to stdin." >&2
    echo "Usage: cat cipher.enc | $0 > plain.txt" >&2
    exit 1
fi

# Wait for 1 byte of input to ensure upstream pipe has started sending data.
# This serializes the prompts: cave.sh prompts -> cave.sh writes -> uncave.sh wakes up -> uncave.sh prompts.
# Note: LC_ALL=C ensures byte-oriented processing for read.
# We use 'read -n1' (bash) instead of dd for better variable handling, though dd is also fine.
# But 'read -n1' returns exit code 1 if EOF is reached before n chars.
IFS= read -r -n1 -d '' FIRST_CHAR

# Check if input was empty (read failed to get anything)
if [ -z "$FIRST_CHAR" ]; then
    echo "Error: Input is empty." >&2
    exit 1
fi

# Prompt for passphrase once
echo -n "enter AES-256-CBC encryption password: " >/dev/tty
read -rs PASSWORD </dev/tty
echo >/dev/tty

# Decrypt from stdin (prepend the first char we read)
{ printf "%s" "$FIRST_CHAR"; cat; } | openssl enc -d -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 -md sha512 -pass fd:3 3<<<"$PASSWORD"

```

# PREVIOUS - retired this in favor of the above

### Cave
```
echo $1 | openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 -out $2
```

### Uncave
```
openssl enc -d -aes-256-cbc -a -pbkdf2 -iter 10000000 -in <file> 
```

## [Back to defi](defi)

