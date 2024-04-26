#!/bin/bash

FIBNOCCILENGTH=$1
a=0
b=1
echo -n "$a,$b"
#0 1 1 2 3 5 8 13 21 34
for ((i=2;i<$FIBNOCCILENGTH;i++))
do
    c=$((a+b))
    echo -n ",$c"
    a=$b
    b=$c
done
     