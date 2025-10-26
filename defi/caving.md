# Caving

### Cave
```
echo $1 | openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 > <file>
```

### Uncave
```
openssl enc -d -aes-256-cbc -a -pbkdf2 -iter 10000000 -in <file> 
```

## [Back to defi](defi)

