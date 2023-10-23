#!/bin/bash
#$1 année $2 mois
#accepter "*"
if [ $# -ne 2 ]
then
    echo "Ce programme demande deux arguments: année et mois."
    exit
fi

if [[ !($1 =~ (201[678]|\*)) ]]
then 
    echo "L'année doit être un nombre entre 2016 et 2018 ou \"*\"."
    exit
fi

if [[ !($2 =~ ((0[0-9])|1[0-2])|\*) ]]
then 
    echo "Le mois doit être un nombre entre 01 et 12 ou \"*\"."
    exit
fi

cat ./ann/$1/$2/*.ann | grep "Location" | cut -f 3 | sort | uniq -c | sort -rn
