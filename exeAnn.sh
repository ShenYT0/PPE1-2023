for var in 6 7 8
do
    #compter annotation
    echo "annotation 201$var:"
    cat Fichiers/ann/201$var/*/*.ann | wc -l
    #lieux
    echo "lieux 201$var:"
    cat Fichiers/ann/201$var/*/*.ann | grep "Location" | wc -l
    #dans un fichier
    echo "Location en 201$var:" >> reponse.txt
    cat Fichiers/ann/201$var/*/*.ann | grep "Location" | wc -l >> reponse.txt


done

cat Fichiers/ann/2016/*/*.ann | grep "Location" | cut -f 3 | head -n 15 | sort | uniq -c | sort -rn

cat Fichiers/ann/201*/03/*