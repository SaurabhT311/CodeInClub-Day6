#!/bin/bash -x

read -p "enter the first number: " n1
read -p "enter the 2nd number : " n2
num1=$n1
num2=$n2
rev=0

function palindrom()
{
   while [ $n1 -ne 0 ]
   do
	k=$(( $n1 % 10 ))
	rev=$(( rev * 10 + k ))
        n1=$(( $n1 / 10 ))
    done
	echo $rev
    if [ $num1 -eq $rev ]
     then
	  echo "palindrom number"
     else
       	  echo "not a Palindrom number"
     fi 
}
	echo result="$( palindrom number )"
{
 while [ $n2 -ne 0 ]
 do
        k=$(( $n2 % 10 ))
        rev=$(( rev * 10 + k ))
        n2=$(( $n2 / 10 ))

    done
        echo $rev
    if [ $num2 -eq $rev ]
     then
          echo "Palindrom number"
     else
          echo "not a Palindrom number"
     fi
}
