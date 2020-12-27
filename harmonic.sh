#!/bin/bash -x

read -p "enter the num: " n
res=0;
for (( i=1; i<=$n; i++))
do
	res=$(echo $res $i | awk '{print $1+1/$2}')
done
	echo "result="
echo $res | awk '{print $0}'
