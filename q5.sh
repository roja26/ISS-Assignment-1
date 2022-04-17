#!/bin/bash
read str
strrev=$(echo $str|rev)
echo $strrev
len=$(echo $strrev| wc -c)
for((i=0;i<len-1;++i))
do
y=${strrev:i:1}
y=$(echo "$y" | tr "0-9A-Za-z" "1-9A-Za-z_")
echo -n "$y"
done
echo
n=$((len/2))
echo -n ${str:0:n}|rev
echo ${str:n:n}
