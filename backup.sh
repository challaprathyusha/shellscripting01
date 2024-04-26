#!/bin/bash
INPUTFILE=file
TIMESTAMP=$(date +%F-%H-%M-%S)
OUTPUTFILE=$INPUTFILE-$TIMESTAMP

if [ -f $INPUTFILE ]
then
    echo "backupfile with name $OUTPUTFILE is created"
else
    echo "file $INPUTFILE does not exist"
    exit 1
fi