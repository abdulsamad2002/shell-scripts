#!/bin/bash

#Ping sweep script

for IP in $(seq 1 5); do
	echo "Pinging...${1}.${IP}"
	ping -c 1 ${1}.${IP} >> ping_result.txt
done

echo "For results: cat ping_result.txt"