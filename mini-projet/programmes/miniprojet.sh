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

echo "
<html>
<head>
	<meta charset=\"UTF-8\">
    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css\">
</head>
<body>
	<table class=\"table\">
        <tr>
            <th>num</th>
            <th>url</th>
            <th>requête</th>
            <th>encodage</th>
        </tr>
"

var=1
while read -r line;
do
	code=$(curl -s -I -L -w "%{http_code}" -o /dev/null $line) #$(curl -s -I $line | head -n 1)
	encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $line | grep -P -o "charset=\S+" | cut -d "=" -f2) #$(curl -s -I $line | grep "content-type:")
	#echo -e "$var\t$line\t$code\t$encodage\t"
	echo "
		<tr>
            <td>$var</td>
            <td><a href=\"$line\">$line</a></td>
            <td>$code</td>
            <td>$encodage</td>
        </tr>
	"
	var=$(expr $var + 1)
done < $1

echo "
	</table>
</body>
</html>
"
# curl -s -I -L -w "%{http_code}" -o /dev/null $URL
# curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d "=" -f2