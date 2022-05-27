#!/bin/sh

#USER_DRAW=$1' '$2' '$3' '$4' '$5

LOTTERYNUM=$(seq 50 | shuf -n 5 | tr '\n' ' ')
BONUSDRAW=$(seq 10 | shuf -n 1)
DATE=$(date +'%Y%d%m')

touch lotoNum.$DATE

echo $LOTTERYNUM$BONUSDRAW > lotoNum.$DATE 




