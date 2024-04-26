#!/bin/bash
SOURCEFILE="$1"
if [ -f $SOURCEFILE ]
then
    echo "text file is given as input to the script"
else
    echo "Please give some text file to the script to read"
    exit 1
fi

CONTENT=$(cat $SOURCEFILE)
echo "$CONTENT"
UNIQWORDS=$(echo "$CONTENT"|tr " " "\n"|sort |uniq)
for word in $UNIQWORDS
do
    OCCURENCE=$(echo "$CONTENT"|grep -o "$word"|wc -l)
    echo "Wordname:$word,occurence of word:$OCCURENCE" >>output.txt
done

  sort  -n output.txt
  
