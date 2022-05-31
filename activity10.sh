#!/bin/sh

FILENAME=$1
NUMLINE=$2

if test -f "$FILENAME"
then
	echo "$FILENAME already exists"
else
	seq 50 | shuf -n $NUMLINE > $FILENAME
fi

