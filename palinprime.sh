#!/usr/bin/bash -x

function isPrime ()
{
	primeflag=0

	for (( i=2 ; i < $number ; i++ ))
	do
		if [ $(( $number % $i )) == 0 ]
		then
			primeflag=1
			break
		fi
	done

	if [ $primeflag -eq 0 ]
	then
		echo "True"
	else
		echo "False"
	fi
}


function isPalin ()
{
	num=$1
	originalNumber=$1
	reversedNumber=0
	remainder=0

	while [ $num -gt 0 ]
	do
		remainder=$(( $num % 10 ))
		reversedNumber=$(( $reversedNumber * 10 + $remainder ))
		num=$(( $num / 10 ))
	done
	if [ $reversedNumber -eq $originalNumber ]
	then
		echo "True"
	else
		echo "False"
	fi
}


read -p "Enter a Number : " number

isTheNoPalindrome=$( isPalin $number )

echo "Checking if it is a Prime Number"

if [ $isTheNoPalindrome == "True" ]
then
	isAPrimeNumber=$( isPrime $num )

	if [ $isAPrimeNumber == "True" ]
	then
		echo "The Number is Palindrome Number and Is a Prime Number"
	else
		echo "The Number is Palindrome But not Prime"
	fi
else
	isAPrimeNumber=$( isPrime $num )

	if [ $isAPrimeNumber == "False" ]
	then
		echo "The Number is Not Palindrome Number and also Not Prime Number"
	else
		echo "The Number is Not Palindrome But is a Prime Number"
	fi
fi
