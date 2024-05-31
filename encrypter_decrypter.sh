#!/bin/bash

if [ -e $1 ];then
	echo "Usage: $0 <en/de>"
	printf "'en' for Encryption \n'de' for decryption\n"
fi

if [[ $1 == *en* ]];
then 
	echo "Encryption selected: "
	echo "Please enter the file for encryption"
	read file 
	gpg -c $file
	echo "Encryption success."

fi

if [[ $1 == *de* ]];
then
	echo "Decryption selected: "
	echo "Please enter the file for decryption"
	read file
	gpg -d $file
	echo "Decryption success"
fi
