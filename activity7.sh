#!/bin/sh

COUNT=1
RIGHT=0
echo "-------Welcome to the Naruto questionnaire--------"

while [ $COUNT -le 10 ]
do
	case $COUNT in 

	1)
		echo "What is Naruto's family name?"
		read ans
		if [ $ans == 'uzumaki' ] || [ $ans == 'Uzumaki' ]
		then
			echo "CORRECT!"
			(( RIGHT++ ))
		else
			echo "WRONG!"
		fi
		(( COUNT++ ));;
	
	2)
		echo "How many times did Naruto fail the graduation test from the Academy?"
		read ans
		if [ $ans == 3 ]
		then
			echo "CORRECT!"
			(( RIGHT++ ))
		else
			echo "WRONG!"
		fi
		(( COUNT++ ));;

	3)
		echo "Whom did Kakashi get his eye from?"
		read ans
		if [ $ans == 'Obito' ] || [ $ans == 'obito' ]
		then
			echo "CORRECT!"
			(( RIGHT++ ))
		else
			echo "WRONG!"
		fi
		(( COUNT++ ));;
	
	4)
		echo "How many questions did Naruto answer correctly in the first phase of the Chunin exam?"
                read ans
                if [ $ans == 0 ]
                then
                        echo "CORRECT!"
                        (( RIGHT++ ))
                else
                        echo "WRONG!"
                fi
                (( COUNT++ ));;

	5)
                echo "What does Naruto wear before he bacame a Genin?"
		read ans
                if [ $ans == 'goggles' ] || [ $ans == 'Goggles' ]
                then
                        echo "CORRECT!"
                        (( RIGHT++ ))
                else
                        echo "WRONG!"
                fi
		(( COUNT++ ));;
	
	6)
                echo "Who held Naruto hostage when he was born?"
		read ans
                if [ $ans == 'madara' ] ||  [ $ans == 'Madara' ]
                then
                        echo "CORRECT!"
                        (( RIGHT++ ))
                else
                        echo "WRONG!"
                fi
                (( COUNT++ ));;
	
	7)
                echo "What village does Gaara come from?"
		read ans
                if [ $ans == 'Sand' ] || [ $ans == 'sand' ]
                then
                        echo "CORRECT!"
                        (( RIGHT++ ))
                else
                        echo "WRONG!"
                fi
                (( COUNT++ ));;
	
	8)
                echo "True/False Does Naruto have a Kekkei Genkai?"
		read ans
                if [ $ans == 'False' ] || [ $ans == 'false' ]
                then
                        echo "CORRECT!"
                        (( RIGHT++ ))
                else
                        echo "WRONG!"
                fi
                (( COUNT++ ));;		
	
	9)
                echo "what is Sasuke's Kekkei Genkai?"
		read ans
                if [ $ans == 'Sharingan' ] || [ $ans == 'sharingan' ]
                then
                        echo "CORRECT!"
                        (( RIGHT++ ))
                else
                        echo "WRONG!"
                fi
                (( COUNT++ ));;	
	10)
                echo "What shop is Naruto's favorite food?"
		read ans
                if [ $ans == 'Ichiraku' ] || [ $ans == 'ichiraku' ]
                then
                        echo "CORRECT!"
                        (( RIGHT++ ))
                else
                        echo "WRONG!"
                fi
                (( COUNT++ ));;	
	esac
done

echo "You guessed $RIGHT/10 questions correctly!"
