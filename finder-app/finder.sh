#!/bin/sh

filesdir=$1
searchstr=$2

if [ ! $# -eq 2 ]
then
  echo Error: Script accepts exactly 2 arguments
  exit 1
fi

if [ ! -d $filesdir ]
then
  echo Error: Directory does not exist
  exit 1
fi

searchmatch=$(grep -r $searchstr $filesdir | wc -l)
#echo $searchmatch

filesNum=$(ls $filesdir | wc -l)
#echo $filesNum

echo "The number of files are $filesNum and the number of matching lines are $searchmatch"