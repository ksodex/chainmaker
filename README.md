# Blockchain Node Deployment
This project provides an automated solution for deploying and managing blockchain nodes using Docker. It simplifies the process of setting up nodes for various blockchain networks, streamlining configuration, synchronization, and monitoring.

## Key Features:
- Supports deployment for multiple blockchain protocols
- Dockerized setup for easy installation and management
- Automated node synchronization and configuration
- Integration with monitoring tools such as Prometheus and Grafana
- Scalable architecture for production environments

## Prerequisites
Before starting, ensure you have the following installed:

- [Docker](https://docker.com/)
- [Docker compose](https://docs.docker.com/compose/)

## Installation
### 1) Clone the repository:

```bash
git clone https://github.com/ksodex/chainmaker.git
cd chainmaker
```

### 2) Configure your blockchain node settings
Edit the configuration files, such as <span style="background-color: #CCCC; border-radius: 6px; padding: 2px; color: white">docker-compose.yml</span> and environment variable files, to match your desired blockchain network and node settings. The repository is set up for common blockchain protocols, but can be customized as needed.

### 3) 

### 4) Create JWT secret and start the services
Create JWT secret for lodestar and geth; run the following command to start your blockchain node and the associated services (Prometheus, Grafana, etc.):

``` sh
# Create JWT secret
openssl rand -hex 32 | tr -d "\n" > "jwtsecret"
mkdir ./data && mv ./jwtsecret ./data/
cat ./data/jwtsecret ; echo
```

```bash
# For geth and lodestar
docker compose -f services/geth.compose.yaml up -d
```

```bash
# For prometheus and grafana
docker compose -f services/monitor.compose.yaml up -d
```

Or running 2 script from root dir

```bash
# Grant permission to run
chmod +x scripts/start-node.sh && chmod +x scripts/start-monitoring.sh

# Run scripts (use sudo if docker if not in the group)
./scripts/start-node.sh
./scripts/start-monitoring.sh
```

### Contributing
Contributions are welcome! If you have suggestions or improvements, feel free to create an issue or submit a pull request.

PS: Feel free to customize this README.md based on your specific project's features and setup.
