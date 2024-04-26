#!/bin/bash
INPUTFILE=file
TIMESTAMP=$(date +%F-%H-%M-%S)
BACKUPFILE=$INPUTFILE-$TIMESTAMP
OUTPUTFILE=/home/ec2-user/shellscripting01/$BACKUPFILE

if [ -f $INPUTFILE ]
then
    echo "create a backupfile with name $BACKUPFILE"
else
    echo "file $INPUTFILE does not exist"
    exit 1
fi

cat $INPUTFILE > $OUTPUTFILE