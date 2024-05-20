#!/bin/bash
DIRNAME=$1
NOOFFILES=$2

if [ $# -eq 2 ]
then
    echo "provided args in command line"
else
    echo "provide a directory and number of files to create:$0 <dir> <nooffilestocreate>"
    exit 1
fi

cd ..
mkdir $DIRNAME
if [ $? -eq 0 ]
then
    echo "directory is created"
else
    echo "directory is not created"
    exit 1
fi

cd $DIRNAME

for ((i=1;i<=$NOOFFILES;i++))
do
    touch FILE$i
done