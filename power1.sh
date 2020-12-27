read -p "enter the number: " n
res=1
for (( i=0; i<=10; i++ ))
do
	echo "$n^$i="$res
	 res=$(( res * 2 ))

done
