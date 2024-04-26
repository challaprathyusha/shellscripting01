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
echo $FILES