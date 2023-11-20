#!/bin/bash

TOPN="$2"
FICHIER="$1"

if [ ! -f "$1" ]
then
    echo 'Pas de fichier donné en argument!'
    exit 1
fi

if [ -z "$2" ]
then
    TOPN=25
fi

if ! [[ "$TOPN" =~ [1-9][0-9]* ]]
then
    echo "Donner moi un chiffre"
    exit 1
fi



source miniprojetSupEx1.sh "$FICHIER" | sort | uniq -c | sort -rn | head -n "$TOPN"

# sort | uniq -c| sort -n | tail -n 3
# bash or source
