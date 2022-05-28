#!/bin/sh

USER_DRAW=()i
DATE=$(date +'%Y%d%m')
LOTONUM=$(cat lotoNum.$DATE)
COUNT=0
while [ $COUNT -le 5 ]
do
	echo "Please enter a number between 1 and 50"
	read num

	if (( $num >=1 )) && (( $num <= 50 )) && (( $COUNT < 5 ))
	then 
		USER_DRAW+=($num)
		((COUNT++))
	
	elif (( $num >=1 )) && (( $num <= 50 )) && (( $COUNT == 5 ))
	then
		echo "This was your power ball number"
		USER_DRAW+=($num)
		((COUNT++))
		break
	else
		continue
	fi
done

COUNT=0

for i in ${USER_DRAW[@]}
do
	
	if grep -owF $i lotoNum.$DATE 
	then
		((COUNT++))
	
	fi	
done

case $COUNT in

	5) 
		echo "Congrats you won the lottery";;
	
	6)
		echo "Congrats you won the lottery and the powerball";;
	
	*)
		echo "You got $COUNT many numbers right";;
esac 













