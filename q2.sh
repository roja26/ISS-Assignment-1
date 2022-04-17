#!/bin/bash
IFS='~'
while read line;
 do read -a arr <<< "$line"
 echo "${arr[1]} once said,"\"${arr[0]}"\"" >> speech.txt 
done < quotes.txt






