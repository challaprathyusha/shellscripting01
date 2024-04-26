#!/bin/bash
SOURCEDIR=$1

#check if directory exists or not
if [ -d $SOURCEDIR ]
then
    echo "the $SOURCEDIR directory exists"
else
    echo "Please makesure $SOURCEDIR directory exists"
    exit 1
fi
cd $SOURCEDIR
LIST=$(ls) 

for file in $LIST
do
    echo $file
done