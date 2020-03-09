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

#function is used to rolls the die to get a number
function DieRolls(){
RandomNumber=$(($RANDOM%6+1))
echo $RandomNumber
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

#it is used to repeat till the player reaches the winning position
while [ $position -le $WINNINGPOSITION ]
do
	toChecksOption
done

#it is used check if player position moves below 0
if [ $position -le 0 ]
then
	position=$STARTPOSITION
fi
	echo $position
