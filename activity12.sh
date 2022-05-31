#!/bin/sh

FILE1=$1
FILE2=$2

echo "$( cat $FILE1 | grep -f $FILE2 )"
