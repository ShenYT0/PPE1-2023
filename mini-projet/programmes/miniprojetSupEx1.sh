#!/bin/bash
#grep -oE '\w+' $1 | tr '[:upper:]' '[:lower:]'
if [ ! -f "$1" ]
then
    echo 'Pas de fichier donné en argument!'
    exit 1
fi
cat $1 | grep -oP '\p{Latin}+' | tr '[:upper:]' '[:lower:]' | tr 'ÉÀÊ' 'éàê'