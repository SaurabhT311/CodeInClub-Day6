 #!/bin/bash -x

function degC()
{
	echo "value in Celcius is: "
	echo $1 | awk '{print ($1-32)*5/9}'
}

function degF()
{
	echo "Value in Fahrenheit is: "
	echo $1 | awk '{print 32+($1*9/5)}'
}

echo "enter 1 for degree and 2 for fahrenheit :"
read -p "Enter your choice: " choice
read -p "Enter the temperature: " temp
case $choice in
	1) 
		if [[ $temp -ge 32 && $temp -le 212 ]]
	        then
			degC $temp
	         else
			echo "Temperature is not in freezing and boiling point"
	         fi
		 ;;
	2) if [[ $temp -ge 0 && $temp -le 100 ]]
	   then
		degF $temp
		else
			echo "Temperature not within freezing and boiing point"
		fi
		;;
	*)
		echo "enter valid choice"
		;;
esac

