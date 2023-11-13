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
	code=$(curl -s -I -L -w "%{http_code}" -o /dev/null $line) #$(curl -s -I $line | head -n 1)
	encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $line | grep -P -o "charset=\S+" | cut -d "=" -f2) #$(curl -s -I $line | grep "content-type:")
	echo -e "$var\t$line\t$code\t$encodage\t"
	var=$(expr $var + 1)
done < $1

# curl -s -I -L -w "%{http_code}" -o /dev/null $URL
# curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d "=" -f2