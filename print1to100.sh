#!/bin/bash
NUMBERS=$1
if [ $# -ne 1 ]
then
    echo "provide argument:$0 <>"
    exit 1
else
    echo "argument is provided via command line"
fi

for ((i=0;i<=$NUMBERS;i++))
do
    echo -n "$i,"
done

