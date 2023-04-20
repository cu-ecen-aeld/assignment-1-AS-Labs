#!/bin/bash


if [ $# -ne 2 ]
then
    echo "Error, expected two args"
    exit 1
fi


filesdir=$1
searchstr=$2


if [ ! -d "$filesdir" ]
then
    echo "Not a directory"
    exit 1
fi

if [ -n "$searchstr" ] 
then
    echo ""
else
    echo "Not a string!"
    exit 1
fi

# number of files
X=$(grep -r "$searchstr" "$filesdir"|awk '{ print $1}' |sort |uniq |wc -l)
# number of matching lines
Y=$(grep -r "$searchstr" "$filesdir" |wc -l)

grep -r "$searchstr" "$filesdir"
echo "The number of files are $X and the number of matching lines are $Y"


