#!/bin/bash
# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

NUM1=$1
NUM2=$2

ADD=$(($NUM1+$NUM2))
SUB=$(($NUM1-$NUM2))
MUL=$(($NUM1*$NUM2))
DIV=$(($NUM1/$NUM2))
echo "SUBTRACTION : $SUB"
echo "ADDITION : $ADD"
echo "MULTIPLICATION : $MUL"
echo "DIVISION : $DIV"