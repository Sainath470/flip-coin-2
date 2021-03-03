#!/bin/bash -x
declare -A result1 result2
num=0
h=0
t=0
while [ $num -lt 50 ]
do
((num++))
Coin=$((1+RANDOM%2))
if [ $Coin -eq 1 ]
then
	h=$(($h+1))
	result1[count]="H"
	((count++))
else
	t=$(($t+1))
	result2[count]="T"
	((count++))
fi
done

echo "total head wins" $h
echo ${result1[@]}
Head_percentage=$((100*$h/50))
echo "total tail wins" $t
echo ${result2[@]}
Tail_percentage=$((100*$t/50))
echo "Heads percentage is:" $Head_percentage"%" "Tails percentage is: "$Tail_percentage"%"
