#!/bin/sh

FILENAME=$1

if test -f "$FILENAME"
then
	echo "$FILENAME exists."
else
	touch $FILENAME
fi

