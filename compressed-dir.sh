#!/bin/bash
echo "enter source directory as input:"
read SOURCEDIR
echo "enter destination directory as input:"
read DESTINDIR

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCEDIR ]
then 
    echo -e "$Y the directory $SOURCEDIR exist $N"
else
    echo -e "$R Please make sure $SOURCEDIR exist $N"
    exit 1
fi 

if [ -d $DESTINDIR ]
then 
    echo -e "$Y the directory $DESTINDIR exist $N"
else
    echo -e "$R Please make sure $DESTINDIR exist $N"
    exit 1
fi 

