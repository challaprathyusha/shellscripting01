#!/bin/bash
PRINTNUM=1000
for ((i=0;i<=$PRINTNUM;i++))
do
    if [ $i -eq 555 ]
    then
        echo "i is equals to 555,please exit from the loop"
        break
    else
       echo $i
    fi
done
