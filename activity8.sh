#!/bin/sh

COUNT=1
declare -a numArr
prod=1
AVERAGE=0

while [ $COUNT -le 10 ] 
do
	
	if [ $COUNT -lt 5 ]
	then
		echo "Please enter a series of numbers"
		read num
		numArr+=($num)
		(( COUNT++ ))
	fi
	if [ $COUNT -ge 5 ]
	then
		echo "Please enter a number or 0 to exit"
		read num
		if [ $num == 0 ]
		then	
			break
		else
			numArr+=($num)
			(( COUNT++ ))
		fi
	fi
done

function product {

	for i in ${numArr[@]}
	do
		prod=$(( $prod * $i ))

	done
	echo $prod
}
function sumation {

	for i in ${numArr[@]}
	do
		sum=$(( $sum + $i ))
	done
	echo $sum
}
arr2=($(echo ${numArr[*]} | tr " " "\n" | sort -n ))
echo "Minimum value is ${arr2[-1]}"
echo "Maximum value is ${arr2[0]}"
COUNT=$(( $COUNT - 1 ))
SUM=$(sumation)
echo "product of arr is $(product)"
echo "sumation of arr is $(sumation)"
AVERAGE=$(( $SUM / $COUNT ))
echo "average is $AVERAGE"
