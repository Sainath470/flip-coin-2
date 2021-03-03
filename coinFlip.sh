#!/bin/bash -x

Coin=$((1+RANDOM%2)) 
if [ $Coin -eq 1 ]
then
	echo "Head wins"
else
	echo "Tail wins"
fi
