#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Ce programme demande qu'une argument: mois."
    exit
fi

if [[ !($1 =~ (0[1-9])|1[0-2]) ]]
then 
    echo "Le mois doit être un nombre entre 01 et 12."
    exit
fi

cat ./ann/2016/$1/* | grep "Location" | wc -l