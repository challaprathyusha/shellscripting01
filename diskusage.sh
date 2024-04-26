#!/bin/bash
DISKUSAGE=$(df -hT|grep xfs)
DISKTHRESHOLD=10
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate(){
if [ $1 -ne 0 ]
then
    echo -e "$2...$R failed $N"
else
    echo -e "$2....$G success $N"
fi
}

while read -r line
do
 USAGE=$(df -hT|grep xfs|awk -F " " '{print$6F}'|cut -d "%" -f1)
 MOUNTPOINT=$(df -hT|grep xfs|awk -F " " '{print$NF}')
if [ $USAGE -ge $DISKTHRESHOLD ]
then
    echo "$MOUNTPOINT is more than $DISKTHRESHOLD, and the usage is $USAGE"
fi
done <<< $DISKUSAGE