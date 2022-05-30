#!/bin/sh

echo "Enter password"
read password

LENGTH=${#password}

echo $LENGTH

if [ $LENGTH -ge 8 ]
then
	if [[ "$password" == *[A-Z]* && "$password" == *[a-z]* && "$password" == *[0-9]* && "$password" == *['!'@#\$%^\&*()_+]* ]]
	then
		echo "Strong Password"
	else
		echo "Password must contain capital and lowercase letters, numbers and special characters."
	fi
else
	echo "Password must be 8 or more charactors"
fi










































			
							
