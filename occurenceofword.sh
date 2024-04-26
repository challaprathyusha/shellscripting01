#!/bin/bash
SOURCEFILE="$1"
if [ -f $SOURCEFILE ]
then
    echo "text file is given as input to the script"
else
    echo "Please give some text file to the script to read"
    exit 1
fi

cat $SOURCEFILE
UNIQWORDS=$(cat $SOURCEFILE|tr " " "\n"|sort |uniq)
for word in $UNIQWORDS
do
    OCCURENCE=$(cat $SOURCEFILE|grep -o '$word'|wc -l)
    echo "Wordname:$word,occurence of word:$OCCURENCE" >> output.txt
done

TOPMOSTFREQWORDS=$(sort -k2r output.txt)
echo "$TOPMOSTFREQWORDS"