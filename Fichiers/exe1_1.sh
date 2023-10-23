#!/bin/bash
#./exe1_sh type d'entité année
if [ $# -ne 2 ]
then
    echo "Ce programme demande deux arguments: type et année."
    exit
fi

if [[ !($1 =~ (ann|txt)) ]]
then
    echo "Le type doit être ann ou txt."
    exit
fi

if [[ !($2 =~ [[:digit:]]) ]]
then 
    echo "L'année doit être un nombre."
    exit
fi

if [ $2 -lt 2016 -o $2 -gt 2018 ]
then
    echo "L'année doit entre 2016 et 2018."
    exit
fi

ls ./$1/$2/* -l |grep "^-"|wc -l
