#!/bin/bash

# define the length of the password

echo "How long do you want your password to be?"
read length
LENGTH=$length

echo "Numbers, Letters, Special Characters or All? (1,2,3,4)"
read a
if [[ $a == "4" ]]; then
 
	# define the character set to use for the password
	CHARSET='!#$%&()*+,-./:;<=>?@[\]^_`{|}~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
else
	if [[ $a == "1" ]]; then
		CHARSET='1234567890'
	else
		if [[ $a == "2" ]]; then
			CHARSET='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
		else
			if [[ $a == "3" ]]; then
				CHARSET='£$%^&*()'
			else
				echo "INVALID INPUT"
				exit 1
fi
	fi
		fi
			fi






# generate the password
PASSWORD=$(tr -dc "${CHARSET}" < /dev/urandom | fold -w "${LENGTH}" | head -n 1)
echo "What is the password for?"
read what
DATE=$(date)
# output the password
echo "${PASSWORD}"
echo " The password is ${PASSWORD} , It was made at ${DATE}" >> pass.txt 
echo " For ${what}" >> pass.txt

