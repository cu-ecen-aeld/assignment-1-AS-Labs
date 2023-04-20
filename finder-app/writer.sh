#!/bin/bash


if [ $# -ne 2 ]
then
    echo "Error, expected two args"
    exit 1
fi


writefile=$1
writestr=$2

directory_name=$(dirname "$writefile")
file_name=$(basename "$writefile")


if [ ! -d "$directory_name" ]
then
    echo "Not a directory"
    mkdir -p $directory_name
fi

if [ -n "$writestr" ] 
then
    echo ""
else
    echo "Not a string!"
    exit 1
fi


echo "$writestr" > $writefile

