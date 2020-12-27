#!/bin/bash -x

echo "enter the table: "
read n
res=1
i=0
while [[ $i -le 10 && $res -le 256 ]]
do
	echo "$n^$i"=$res
	res=$(( res * 2 ))
	i=$((i + 1))
done
