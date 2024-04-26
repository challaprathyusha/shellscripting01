#!/bin/bash
SOURCEFILE="$1"
if [ -f $SOURCEFILE ]
then
    echo "text file is given as input to the script"
else
    echo "Please give some text file to the script to read"
    exit 1
fi

FILE=$(cat $SOURCEFILE)
UNIQWORDS=$(echo $FILE|sort -u)
for word in $UNIQWORDS
do
    OCCURENCE=$(echo $FILE|grep -o 'word'|wc -l)
    echo "Wordname:$word,occurence of word:$OCCURENCE" >> output.txt
done

TOPMOSTFREQWORDS=$(sort -k2r output.txt)
echo "$TOPMOSTFREQWORDS"