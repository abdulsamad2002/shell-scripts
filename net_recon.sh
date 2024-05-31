#!/bin/bash

if [ -z "$1" ]
then
	echo "Usage: ./recon.sh <IP>"
	exit 1
fi
printf "\n-------------NMAP-------------\n\n"
echo "Running nmap....."
nmap $1 | tail -n +5 | head -n -3 >> output

while read line
do
	if [[$line == *open*]] && [[$line == *http*]]
	then
	echo "Running whatweb..."
	whatweb $1 -v > temp
	fi

done >> output

if [ -e temp ]
then
	printf "--------WEB--------\n\n"  >> output
	cat temp >> results
	rm -f temp
fi

cat output
