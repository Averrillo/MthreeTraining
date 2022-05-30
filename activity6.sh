#!/bin/sh

a=$1
b=$2

function greaterThan
{
	if [ $a -gt $b ]
	then 
		echo "True"
	else
		echo "False"
	fi
}

function difference
{
	(( res=$a-$b ))
	echo "The difference between $a and $b is $res"
}


if [[ "$a" == *[0-9]* && "$b" == *[0-9]* ]]
then
	greaterThan
	difference
else
	echo "Please enter a digit"
fi

