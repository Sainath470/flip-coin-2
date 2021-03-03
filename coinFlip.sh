#!/bin/bash -x

coin=$((1+RANDOM%2)) 
if [ $coin -eq 1 ]
then
	echo "Head wins"
else
	echo "Tail wins"
fi
