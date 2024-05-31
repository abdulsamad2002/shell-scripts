#!/bin/bash

#Password generator

echo "Password Generator"
read -p "Enter the number of passwords needed: " NUM
read -p "Please enter the length of your password generator: " LEN
for I in $(seq $NUM); 
do
	openssl rand -base64 48 | cut -c1-$LEN
done