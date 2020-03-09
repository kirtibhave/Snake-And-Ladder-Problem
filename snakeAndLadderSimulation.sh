#!/bin/bash -x
echo "**********Welcome to Snake & Ladder Problems**********"

#VARIABLES
start_Position=0

#function is used to rolls the die to get a number
function dieRolls(){
	dieRoll=$((RANDOM%6+1))
	echo "dieroll is $dieRoll"
}
dieRolls
