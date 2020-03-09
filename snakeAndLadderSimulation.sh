#!/bin/bash -x
echo "**********Welcome to Snake & Ladder Problems**********"

#CONSTANTS
NO_PLAY=0
LADDER=1
SNAKE=2

#VARIABLES
start_Postion=0
position=0

#function is used to rolls the die to get a number
function DieRolls(){
	randomNumber=$(($RANDOM%6+1))
	echo $randomNumber
}

#function is used to checks option whether they are no play,ladder or snake
function toChecksOption(){
	checkOption=$(($RANDOM%3))
	dieGeneratedValues=$(DieRolls)
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
toChecksOption

