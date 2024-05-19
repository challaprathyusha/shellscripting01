#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $# -ne 1 ]
then
    echo -e "$R please provide git url as an argument :$0 <git-url> $N"
    exit 1
else
    echo -e "$G git url is provided $N"
fi

GIT_URL=$1

echo "clone the git repo using command called git clone"

git clone "${GIT_URL}"

if [ $? -eq 0 ]
then
    echo -e "$G git repo has been cloned successfully $N"
else
    echo -e "$R please check the url before cloning $N"
    exit 1
fi
