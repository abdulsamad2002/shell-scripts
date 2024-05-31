#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target-IP>"
    exit 1
fi

TARGET=$1

echo "Scanning ports on $TARGET..."

for PORT in {1..65535}; do
    timeout 1 bash -c "echo > /dev/tcp/$TARGET/$PORT" 2>/dev/null && echo "Port $PORT is open"
done
