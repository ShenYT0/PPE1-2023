#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Ce programme demande une argument: type"
    exit
fi

if [[ !($1 =~ (ann|txt)) ]]
then
    echo "Le type doit être ann ou txt."
    exit
fi

for i in {0..2}
do
    source ./exe1_1.sh $1 `expr 2016 + $i`
done