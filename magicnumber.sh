#!/bin/bash -x

echo "consider a Number between 1 to 100"
Correct="False"
minBound=0
maxBound=100
min=0

while [ $Correct == False ]
do
	mid=$((( $maxBound + $minBound ) / 2 ))
	read -p "is the $mid the correct Answer:  True or False : " Correct
	if [ $Correct == "True" ]
	then
		break
	else
		read -p "is the number Greater or Smaller than $mid : Enter Maximum or Minimum : " MinorMax
		if [ $MinorMax == "Maximum" ]
		then
			minBound=$mid
		else
			maxBound=$mid
		fi
	fi
done

magicNumber=$mid

while [ $magicNumber -ne 1 ]
do
	number1=$(( $magicNumber / 10 ))
	number2=$(( $magicNumber % 10 ))
	magicNumber=$(( $number1 + $number2 ))

	if [ $magicNumber -eq 1 ]
	then
		echo "The number is a magic number"
		break
	else
		if [ $number1 -eq 0 ]
		then
			echo "The number is not a magic Number"
			break
		fi
	fi
done
