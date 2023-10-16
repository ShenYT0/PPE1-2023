#!/bin/bash
#$1 année $2 mois
#accepter "*"
cat ./ann/$1/$2/*.ann | grep "Location" | cut -f 3 | sort | uniq -c | sort -rn
