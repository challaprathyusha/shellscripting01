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
UNIQWORDS=$(echo "$CONTENT"|tr " " "\n"| tr '[:upper:]' '[:lower:]'|sort |uniq)
for word in $UNIQWORDS
do
    OCCURENCE=$(echo "$CONTENT"|grep -o "$word"|wc -l)
    echo "Wordname:$word,occurence of word:$OCCURENCE" 1>> outputfile
done
sort -k2r outputfile

cat outputfile|head -3
rm -rf outputfile
  
