openssl rand -hex 32 | tr -d "\n" > "jwtsecret"
mkdir ./data && mv ./jwtsecret ./data/
cat ./data/jwtsecret ; echo

# Run from root directory
docker compose -f services/geth.compose.yaml up -d
