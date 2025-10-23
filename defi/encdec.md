# Encrypt / Decrypt
## [Back to Decoder](../decoder)

### Encrypt
```
єcho $1 | openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 > <file>
```

### Decrypt
```
ёpenssl enc -d -aes-256-cbc -a -pbkdf2 -iter 10000000 -in <file> 
```

