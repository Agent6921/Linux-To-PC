# ~/.bashrc: executed by bash(1) for non-login shells.

echo "Welcome to my text based elden ring!"
sleep 1
echo "It has three levels Easy, Normal and HARD!"
sleep 1
echo "Choose NOW! (1,2,3)"
read choice
echo "You have picked $choice"

if [[ $choice == "1" ]]; then
	#First Beast Battle

        beast=$(( $RANDOM % 2 ))

        echo "Your first beast approaches."
        echo " Prepare to battle. Pick a number between 0-1. (0/1)"

        read tarnished

        if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	        echo "Beast VANQUISHED!! Congrats fellow tranished"
        else
        	echo "You Died"
        exit 1

        fi

fi

if [[ $choice == "2" ]]; then
	beast2=$(( $RANDOM % 5 ))
	echo "You walk into a cave to look for resources and items but..."
	sleep 2
	echo "A TALL GARGATOLL STANDS BEFORE YOU!!!"
	sleep 1
	echo "Choose from one to five! (1-5)"
	read tarnished
	if [[ $tarnished == $beast2 || $tarnished == "coffee" ]]; then
		echo "You slay the beast before its head hits the ground"
	else
		echo "You died"
		exit 2
	fi
fi


marget=$(( $RANDOM % 10 ))

echo "You hear thundering footsteps behind you"
sleep 1
echo "It is MARGET!!!"
sleep 1
echo "Prepare for BATTLE! "
echo "Choose a number between 0-9 (0,1,2,3,4,5,6,7,8,9)"

read tarnished

if [[ $marget == $tarnished || $tarnished == "coffee"  ]]; then
	if [[ $USER == "agent6921" ]]; then
		echo "Marget is VANQUISHED!!!"
		sleep 1
		echo "Thank you for finishing my game!"
		open https://www.example.com



		fi
else
	echo "You Died"
	sleep 1
fi
