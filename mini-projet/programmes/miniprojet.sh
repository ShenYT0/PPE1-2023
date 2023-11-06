#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Ce programme demande qu'une argument: le chemin du fichier."
    exit
fi

if [ ! -f $1 ]
then
	echo "L'argument doit être un fichier!"
	exit
fi

var=1
while read -r line;
do
	code=$(curl -s -I $line | head -n 1)
	encodage=$(curl -s -I $line | grep "content-type:")
	echo -e "$var\t$line\t$code\t$encodage\t"
	var=$(expr $var + 1)
done < $1
