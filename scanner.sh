#!/bin/bash
INPUT="targets.txt"
PORTS=(443 2053 2083 2087 2096 8443)

grep -v '^#' $INPUT | while read line; do
  if [[ $line =~ ^[0-9] ]]; then
    IP=$line
    for PORT in "${PORTS[@]}"; do
      if timeout 2 bash -c "</dev/tcp/$IP/$PORT" 2>/dev/null; then
        echo "OK $IP:$PORT"
      fi
    done
  else
    DOMAIN=$line
    IPS=$(dig +short $DOMAIN | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}')
    for IP in $IPS; do
      if timeout 3 openssl s_client -connect $IP:443 -servername $DOMAIN 2>/dev/null | grep -q "subject="; then
        echo "OK $DOMAIN -> $IP"
      fi
    done
  fi
done
