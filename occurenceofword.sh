#!/bin/bash
SOURCEFILE="$1"
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

if [ -f $SOURCEFILE ]
then
    echo -e "$G text file is given as input to the script $N"
else
    echo -e "$R Please give some text file to the script to read $N"
    exit 1
fi

CONTENT=$(cat $SOURCEFILE)
echo "$CONTENT"
validate $? "printing the content of sourcesfile on commandline is"

UNIQWORDS=$(echo "$CONTENT"|tr " " "\n"| tr '[:upper:]' '[:lower:]'|sort |uniq)
validate $? "unique words extraction from file is"

for word in $UNIQWORDS
do
    OCCURENCE=$(echo "$CONTENT"|grep -o "$word"|wc -l)
    validate $? "occurence of each word from file is"
    echo "Wordname:$word,occurence of word:$OCCURENCE" 
done





  
