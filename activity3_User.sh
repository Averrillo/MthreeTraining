#!/bin/sh

USER_DRAW=()
DATE=$(date +'%Y%d%m')
LOTONUM=$(cat lotoNum.$DATE)
COUNT=0
while [ $COUNT -le 5 ]
do
	if (( $COUNT == 0 ))
	then
		echo "Please enter a number between 1 and 50"
		read num
		USER_DRAW+=($num)
		((COUNT++))

	elif (( $num >= 1 )) && (( $num <= 50 )) && (( $COUNT <= 4 ))
	then
		echo "Please enter a number between 1 and 50"
		read num
		USER_DRAW+=($num)
		((COUNT++))

	elif (( $num >= 1 )) && (( $num <= 50 )) && (( $COUNT == 5 ))
	then 
		echo "Please enter power ball number"
      		read num
		USER_DRAW+=($num)
		((COUNT++))
		break
	else	
		echo "Please Enter a new variable"
	fi
done

echo ${USER_DRAW[@]}

COUNT=0

for i in ${USER_DRAW[@]}
do
	if grep -q $i lotoNum.$DATE 
	then
		((COUNT++))
	fi	
done

echo $COUNT

case $COUNT in

	5) 
		echo "Congrats you won the lottery";;
	
	6)
		echo "Congrats you won the lottery and the powerball";;
	
	*)
		echo "You got $COUNT many numbers right";;
esac 













