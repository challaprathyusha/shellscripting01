#!/bin/bash
INPUTFILE=file
TIMESTAMP=$(date +%F-%H-%M-%S)
OUTPUTFILE="/home/ec2-user/shellscripting01/$INPUTFILE-$TIMESTAMP"

if [ -f $INPUTFILE ]
then
    echo "create a backupfile with name $'OUTPUTFILE'"
else
    echo "file $INPUTFILE does not exist"
    exit 1
fi

cat $INPUTFILE > $OUTPUTFILE