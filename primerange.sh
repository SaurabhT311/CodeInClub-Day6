#!/bin/bash -x

read -p "enter start number: " start
read -p "enter end number: " end

for (( i=$start ; i<=$end; i++ ))
do
	count=1
	for(( j=2; j<=$i; j++ ))
	do
		if [ $(( i % j )) == 0 ]
		then
		count=$(( count + 1 ))
		fi
	done
  if [[ $count -le 2 ]] && [[ $i -ne 1 ]]
	then
		echo -n $i " "
	fi
done

