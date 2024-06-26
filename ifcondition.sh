#!/bin/bash
NUM=$1
if [$# eq 0 ]
then
    echo "please give some number as command line argument to the script"
    exit 1
else
    echo "An argument is passed via command line to the script"
fi

if [ $NUM -ge 0 ] 
then
    REMAINDER=$(($NUM%2))
    if [ $REMAINDER -eq 0 ]
    then
        echo "$NUM is even number"
    else 
        echo "$NUM is odd number"
    fi
else 
    echo "check the number should be greater than 0"
    exit 1
fi