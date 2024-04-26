#!/bin/bash
INPUTFILE="file"
TIMESTAMP=$(date +%F-%H-%M-%S)
BACKUPFILE="$INPUTFILE-$TIMESTAMP"
OUTPUTFILE="/home/ec2-user/shellscripting01/$BACKUPFILE"

validate(){
    if [ $1 -eq 0 ]
    then
        echo"backupfile with name $BACKUPFILE alredy created so....SKIPPING"
    else
        echo"Please create the backupfile with name $BACKUPFILE"
    fi
}

if [ -f "$INPUTFILE" ]
then
    echo "created a backupfile with name $BACKUPFILE"
    cat "$INPUTFILE" > "$BACKUPFILE"
    validate $? 
else
    echo "file $INPUTFILE does not exist"
    exit 1
fi



