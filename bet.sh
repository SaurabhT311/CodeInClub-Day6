#!/bin/bash -x

start=100
bet=1
number_of_bet=0
won=0
totalamount=$start

while [[ $totalamount -gt 0 && $totalamount -lt 200 ]]
do
	number_of_bet=$((number_of_bet+1))
	gen=$((RANDOM%2))
	if [ $gen -eq 1 ]
	then
	totalamount=$((totalamount+bet))
	won=$((won+1))
	else
	totalamount=$((totalamount-bet))
	fi
done

echo "Total number of bets made = $number_of_bet"
echo "Number of bets won= $won"
echo "Final finishing amount= Rs $totalamount"
