#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <IP>"
    exit 1
fi

IP=$1

echo "Scanning ports on $IP ..."

for port in {1..1024}
do
    timeout 1 bash -c "echo >/dev/tcp/$IP/$port" 2>/dev/null

    if [ $? -eq 0 ]; then
        echo "Port $port is OPEN"
    fi
done
