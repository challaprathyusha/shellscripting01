#!/bin/bash
echo "enter source directory as input:"
read SOURCEDIR
echo "enter destination directory as input:"
read DESTINDIR

TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate(){
if [ -d $1 ]
then 
    echo -e "$Y the directory $1 exist $N"
else
    echo -e "$R Please make sure $1 exist $N"
    exit 1
fi 
}

validate $SOURCEDIR
validate $DESTINDIR


ARCHIVENAME="$DESTINDIR/$SOURCEDIR-$TIMESTAMP.tar.gz"
tar czvf $ARCHIVENAME  $SOURCEDIR

echo "Backup completed: $ARCHIVENAME"
