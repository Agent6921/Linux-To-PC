#!/bin/bash


sleep 1

echo "What is your name?"
read name
sleep 2

echo "How old are you?"
read age
sleep 2

echo "Hello $name you are $age years old"
sleep 3

echo "Do you want to know when you will become a millionare?"
echo "(Y/N)"
read y

if [[ $y == "y" || $y == "Y" ]]; then

	years=$(( $RANDOM % 10))
	loading1=$(( $RANDOM % 5))
	loading2=$(( $RANDOM % 5))
	loading3=$(( $RANDOM % 5))
	loading4=$(( $RANDOM % 5))
	loading5=$(( $RANDOM % 5))
	loading6=$(( $RANDOM % 5))
	wait=$(( $years + $age))

	echo "Calculating"
	sleep $loading1
	echo "*_________"
	sleep $loading2
	echo "**________"
	sleep $loading3
	echo "***_______"
	sleep $loading4
	echo "******____"
	sleep $loading5
	echo "********__"
	sleep $loading6
	echo "*********_"
	sleep $loading1
	echo "FINISHED"
	sleep 1
	echo "$name you will become a millionare when you are $wait"
	exit 1

else
	exit 2

fi
