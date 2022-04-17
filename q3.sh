#!/bin/bash
size=$(stat -c%s $1)
lines=$(wc -l < $1)
words=$(wc -w < $1)
echo "Size = $size bytes"
echo "No. of lines=$lines"
echo "No. of words=$words"
n=0
while read line;
 do ((n++))
 l=$(wc -w <<< $line)
 echo "Line No:$n - Count of words: $l" 
done < $1
IFS=' '
while read line;
 do read -a arr <<< "$line"
 echo "Word: ${arr[1]} - Count of repetition: ${arr[0]}" 
done <<< $(grep -wo "[[:alnum:]]\+" $1| sort | uniq -cd)


