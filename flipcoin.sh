#!/bin/bash -x

headwin=0
tailwin=0

while [[ $headwin -lt 11 && $tailwin -lt 11 ]]
do
	gen=$((RANDOM%2))
	if [ $gen -eq 1 ]
	then
	headwin=$((headwin+1))
	else
	tailwin=$((tailwin+1))
	fi
done

echo "Head won $headwin games"
echo "Tail won $tailwin games"
if [ $headwin -eq 11 ]
then
	echo "Head won the tournament"
else
	echo "Tail won the tournament"
fi
