#!/bin/bash
if [ $# -eq 1 ]
then
    source miniprojetSupEx1.sh "$1" | sort | uniq -c | sort -rn | head -n 25
fi
if [ $# -eq 2 ]
then
    source miniprojetSupEx1.sh "$1" | sort | uniq -c | sort -rn | head -n "$2"
fi