#!/bin/sh
# sed -i 's/#GETH_URL/'"$GETH_URL"'/' /etc/prometheus/prometheus.yml
# sed -i 's/#CONSENSUS_URL/'"$CONSENSUS_URL"'/' /etc/prometheus/prometheus.yml
cat /etc/prometheus/prometheus.yml
exec /bin/prometheus $*
