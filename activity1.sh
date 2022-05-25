#!/bin/sh

USERNAME=$(whoami)
DATE=$(date "+%m/%d/%Y")
TIME=$(date "+%T")
DIRECTORY=$(pwd)
NUMFILES=$(ls $DIRECTORY | wc -l)
BIGGESTFILE=$(du -ah $pwd --exclude=./.git* | sort -r | head -1 ) 

echo username is $USERNAME
echo date is $DATE
echo time is $TIME
echo working directory is $DIRECTORY
echo number of files is $NUMFILES
echo biggest file is $BIGGESTFILE




