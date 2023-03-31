#!/bin/bash

echo "Say Hi"
read hi

if [[ $hi == "Hi" || $hi == "hi" ]]; then


	echo "          ( )"
	echo "         (   )"
	echo "        (_____)"
	echo "  O//      |"
	echo " /|        |"
	echo " / \\       |"

else


	echo "          ( 0"
	echo "         0   )"
	echo "        (1____1"
	echo "  0        1"
	echo " /1\\       |"
	echo " / \\       0"


	sleep 3
	echo "why... not"
	read reason 
	
	if [[ $reason == "because" || $reason == "cuz" ]]; then
		sleep 1
		echo "die..."
		exit 1
	else
		echo "thats no excuse..."
		exit 2

	fi
fi
