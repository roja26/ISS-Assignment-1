#!/bin/bash
sed -r '/^\s*$/d' quotes.txt
sort quotes.txt | uniq -u




