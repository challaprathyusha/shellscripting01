#!/bin/bash
SOURCEDIR="/tmp/files"
#check if directory exists or not
if [ -d $SOURCEDIR ]
then
    echo "the $SOURCEDIR directory exists"
else
    echo "Please makesure $SOURCEDIR directory exists"
    exit 1
fi

FILES="/tmp/files/*"
while read -r line 
do
echo $line
done << $FILES