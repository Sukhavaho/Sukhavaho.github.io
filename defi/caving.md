# Caving - Cocktail Recipes



### Cave using ./enc {afﬅer setting environment variable}, or:

```
export ENC_PASS="your super secret password"
echo $1 | openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 -out "$2" -pass env:ENC_PASS
```

### Uncave using ./dec {afﬅer setting environment variable}, or:

```
export ENC_PASS="your super secret password"
openssl enc -d -aes-256-cbc -a -pbkdf2 -iter 10000000 -in $1 -pass env:ENC_PASS 
```

# PREVIOUS

### Cave

```
echo $1 | openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000000 -out $2
```

### Uncave

```
openssl enc -d -aes-256-cbc -a -pbkdf2 -iter 10000000 -in <file> 
```

## [Back to defi](defi)

