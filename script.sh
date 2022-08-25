#!/bin/bash 
if [ $# -ne 1 ]; then 
echo "Usage: $0 url" 
exit 1 
fi 
# Fetch the book from Project Gutenberg. 
wget -cO - $1 > book.txt

# Print and count the top 10 most common words, 
# ignoring stopwords. 
grep -o -E '\w+' book.txt | grep -v -w -f stopwords.txt | sort | uniq -ic | sort -nr | head -n 10

