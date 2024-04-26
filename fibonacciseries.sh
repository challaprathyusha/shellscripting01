#!/bin/bash

FIBNOCCILENGTH=$1
a=0
b=1

#0 1 1 2 3 5 8 13 21 34
for ((i=0;i<$FIBNOCCILENGTH;i++))
do
    echo -n "$a"
    echo -n "$b"
    c=$((a+b))
    echo -n ",$c"
    a=$b
    b=$c
done
    # i=0 i=1 i=2 i=3 i=4 i=5 i=6 i=7
    # a=0 a=1 a=1 a=2 a=3 a=5 a=8 a=13
    # b=1 b=1 b=2 b=3 b=5 b=8 b=13 b=21
    # c=1 c=2 c=3 c=5 c=8 c=13 c=21 c=34