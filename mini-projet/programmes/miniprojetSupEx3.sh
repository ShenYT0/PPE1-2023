#!/bin/bash
if [ $# -eq 1 ]
then
    grep -oE '\w+' $1 | tr '[:upper:]' '[:lower:]' > ../docs/mots.txt

    paste -d ' ' ../docs/mots.txt <(tail -n +2 ../docs/mots.txt) > ../docs/bigrammes.txt

    sort ../docs/bigrammes.txt | uniq -c | sort -nr | head -n 25 
fi
if [ $# -eq 2 ]
then
    grep -oE '\w+' $1 | tr '[:upper:]' '[:lower:]' > ../docs/mots.txt

    paste -d ' ' ../docs/mots.txt <(tail -n +2 ../docs/mots.txt) > ../docs/bigrammes.txt

    sort ../docs/bigrammes.txt | uniq -c | sort -nr | head -n $2 
fi
