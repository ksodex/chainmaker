## Ports that must be opened:
- 30303/TCP+UDP - Execution layer P2P communication port
- 9000/TCP+UDP - Beacon node IPv4 P2P communication port
- 9090/TCP+UDP - Beacon node IPv6 P2P communication port

## Ports that must be protected:
- 9596/TCP - Beacon node REST API port
- 5062/TCP - Validator key manager API port
- 18550/TCP - MEV-Boost/Builder port
- 8008/TCP - Beacon node metrics port
- 5064/TCP - Validator metrics port
- 8545/TCP - Execution client JSON RPC port
- 8551/TCP - Execution engine port for Lodestar to communicate with the execution client
