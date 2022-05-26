#!/bin/sh

DIRECTORY=/home/ec2-user/testDirectory/*
DATE=$(date +'%Y%d%m')

for i in $(ls -d $DIRECTORY)

do
	mv $i $i.$DATE

done



