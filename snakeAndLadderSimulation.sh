#!/bin/bash -x
echo "**********Welcome to Snake & Ladder Problems**********"

#CONSTANTS
NO_PLAY=0
LADDER=1
SNAKE=2
START_POSITION=0
WINNING_POSITION=100

#VARIABLES
position=0
count=0
player=2

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

#
function toCheckExactPosition(){
	if [ $position -lt $START_POSITION ]
	then
		position=$START_POSITION
	elif [ $position -gt $WINNING_POSITION ]
	then
		position=$(($position-$dieGeneratedValues))
	fi
}

#function is used to switch players turn
function toSwitchPlayer(){
	if [ $player -eq 1 ]
	then
		player=2
	else
		player=1
	fi
}

#it is used to repeat till the player reaches the winning position
while [[ $position != $WINNING_POSITION ]]
do
	toSwitchPlayer
   toChecksOption
	toCheckExactPosition
done

echo "player $player won"
