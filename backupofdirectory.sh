#! /bin/bash
SOURCEDIR=$1
DESTINATIONDIR=$2

if [ $# -eq 2 ]
then
    echo "$SOURCEDIR and $DESTINATIONDIR are passed"
else 
    echo "please pass directories as: <script-name> <sourcedir> <destinationdir>"
    exit 1
fi

validate(){
if [ -d $1 ]
then
 echo "$2...exist"
else 
 echo "$2....doesnot exist"
fi
}

validate $SOURCEDIR "sourcedir"
validate $DESTINATIONDIR "destinationdir"

exitstatus(){
    if [ $1 -eq 0 ]
    then
        echo "$2.....created"
    else
        echo "$2.....not created"
    fi
}

TIMESTAMP="$(date +%F-%H-%M-%S)"
FILE="$DESTINATIONDIR/$SOURCEFILE-$TIMESTAMP.tar.gz"
exitstatus $? "file is"

tar czvf $FILE $SOURCEDIR
exitstatus $? "backupfile is"

echo "compressed backupfile is : $FILE"
