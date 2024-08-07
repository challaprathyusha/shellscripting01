#!/bin/bash
DIRNAME=$1 #/c/devops/repos/dir1

NOOFFILES=$2

if [ $# -eq 2 ]
then
    echo "provided args in command line"
else
    echo "provide a directory and number of files to create:$0 <dir> <nooffilestocreate>"
    exit 1
fi

validate(){
if [ $3 -ne 0 ]
then
    echo "$4 is not created"
    exit 1
else
    echo "$4 is created"
fi
}

if [ -d "$DIRNAME" ]
then
    echo "$DIRNAME exists"
else
    mkdir $DIRNAME
    validate $? "directory"
fi

cd $DIRNAME

for ((i=1;i<=$NOOFFILES;i++))
do
    touch FILE$i
    validate $? "file"
done
ls -l