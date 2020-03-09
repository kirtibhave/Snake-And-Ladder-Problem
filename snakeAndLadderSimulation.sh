#!/bin/bash -x
echo "**********Welcome to Snake & Ladder Problems**********"

#CONSTANTS
NO_PLAY=0
LADDER=1
SNAKE=2
STARTPOSITION=0
WINNINGPOSITION=100

#VARIABLES
position=0
count=0

#function is used to rolls the die to get a number
function dieRolls(){
	randomNumber=$(($RANDOM%6+1))
	echo $randomNumber
}

#function is used to checks option whether they are no play,ladder or snake
function toChecksOption(){
	checkOption=$(($RANDOM%3))
	dieGeneratedValues=$(dieRolls)
	((count++))
		case $checkOption in
			0)
				position=$position
				;;
			1)
				position=$(($position+$dieGeneratedValues))
				;;
			2)
				position=$(($position-$dieGeneratedValues))
				;;
			*)
				echo "enter proper choice"
				;;
		esac
}

#it is used to repeat till the player reaches the winning position
while [[ $position != $WINNINGPOSITION ]]
do
	toChecksOption

	if [ $position -lt 0 ]
	then
		position=$STARTPOSITION

	elif [ $position -gt $WINNINGPOSITION ]
	then
		position=$(($position-$dieGeneratedValues))
	fi
		echo "count no: $count position is:$position" 
done

