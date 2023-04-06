#!/bin/bash
date=$(date)


echo "Add=1"
echo "Take=2"
echo "View=3"
echo "Clear=4"
echo "(1,2,3,4)"
echo "To exit just press enter with no text"
read a
if [[ $a == "1" ]]; then
	echo "Name Of Item"
	read name
	echo "Quantity Of Item"
	read quantity
	chmod +w View.txt
	echo "At $date $quantity $name were added" >> View.txt
	sleep 1
	echo "COMPLETE"
	sleep 1
	chmod -w View.txt
	exit 1

else
	if [[ $a == "2" ]]; then
		 echo "Name Of Item"
        	read name
        	echo "Quantity Of Item"
        	read quantity
		chmod +w View.txt
        	echo "At $date $quantity $name were taken" >> View.txt
        	sleep 1
        	echo "COMPLETE"
        	sleep 1
		chmod -w View.txt
        	exit 1
	else
		if [[ $a == "3" ]]; then
			cat View.txt
			chmod -w View.txt
			exit 1
		else
			if [[ $a == "" ]]; then
				chmod -w View.txt
				exit 1

			else
				if [[ $a == "4" ]]; then
					echo "ARE YOU SURE? (y/n)"
					read y

					if [[ $y == "y" || $y == "Y" ]]; then
						chmod +w View.txt
						rm View.txt
						echo "FILE CLEARED"
						chmod -w View.txt
						exit 1
					else
						echo "EXITING"
						chmod -w View.txt
						exit 1
					fi
				else
					echo "INVALID INPUT"
					chmod -w View.txt
					exit 1

				fi
			fi
		fi
	fi
fi
