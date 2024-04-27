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
MESSAGE=""
while read -r line
do
USAGE=$(echo $line|awk -F " " '{print$6F}'|cut -d "%" -f1)
MOUNTPOINT=$(echo $line|awk -F " " '{print$NF}')

if [ $USAGE -ge $DISKTHRESHOLD ]
then
    MESSAGE+="$MOUNTPOINT is more than $DISKTHRESHOLD, and the usage is $USAGE"
fi
done <<< $DISKUSAGE

echo -e "message:$MESSAGE"
date=$(date "+%F-%H-%M-%S")
echo "usage is:$MESSAGE"|mail -s "Date $date" cprathyusha94@gmail.com