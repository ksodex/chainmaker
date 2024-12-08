### Create and print JWT secret
``` sh
openssl rand -hex 32 | tr -d "\n" > "jwtsecret"
mkdir ./data && mv ./jwtsecret ./data/
cat ./data/jwtsecret ; echo
```
