#  Journal de Yuntian
Pour le cours repositorie [Programmation et Projet encadré](https://github.com/pmagistry/PPE1-2023)
## Séance du 20 septembre

on a fait 
- Le système de fichier Unix
- Les commandes
- Métacaractère * et ?
---
- Crée un compte Github et un repositorie

## Séance du 27 septembre

on a fait
- cp \[options\] source dest
  <br>cp \[options\] source... directory
- tree
  ./
  |-doissier1
  |-doissier2
  |    |-file1
  ...
- rm \[options\] name...
- file
- cut  \[-bn\] \[file\]
  <br>cut \[-c\] \[file\]
  <br>cut \[-df\] \[file\]
- less
- Métacaractère * et ?
---
- Créer ssh clé dans GitHub
- sha256
- git <sous-commande> \[-options...\] \[arguments...\]
- `git clone`
- `git add <FILE...>`
- `git status`
- `git fetch`
- `git rm <FILE...>`
- `git pull`
- `git commit`
- `git push`

## Séance du 4 octobre
-  `git reset`
-  `git revert`


## Séance du 11 octobre
- stdin 0
- stdout 1
- stderr 2
- `>&` out et err dans un fichier
- pipe `|`

- script
- commentaires `#`
- shebang `#!/use/bin/bash`
- variable `$`

## Séance du 18 octobre
### Partie Shell
- Instructions conditionnelles<br>
`if [ condition ]`<br>`then`<br>&nbsp;&nbsp;&nbsp;&nbsp;`#la condition est valide`<br>
`else`<br>&nbsp;&nbsp;&nbsp;&nbsp;`#la condition n ’ est pas valide`<br>`fi`

#### Conditions possibles
- Sur les chemins
  - **-f fichier** vrai si le fichier existe
  - **-d dossier** vrai si le dossier existe
  - **-s fichier** vrai si le fichier existe et n’est pas vide
- Sur des chaînes de caractères
  - **= ou !=** tester si deux chaînes sont identiques (=) ou différentes (!=)
  - **< ou >** pour déterminer si in chaîne est avant ou après une autre dans l’ordre alphabétique
  - **-n chaine** vrai si la chaîne n’est pas vide
    - **-z** vrai si la chaîne est vide (ex: argument non fourni)
- Sur les entiers
  - **a -eq b** si a est égal à b (**eq**ual)
  - **a -ne b** si a est différent de b (**n**ot **e**qual)
  - **a -lt b** si a est plus petit que b (**l**ess **t**han)
  - **a -gt b** si a est plus grand que b (**g**reater **t**han)
  - **a -le b** si a est inférieur ou égal à b
  - **a -ge b** si a supérieur ou égal à b
- `[[expressions régulières]]`
- Les boucles FOR <br>
`for ELEMENT in ENSEMBLE`<br>
`do`<br>
&nbsp;&nbsp;&nbsp;&nbsp;`#passer chaque $ELEMENT dans ENSEMBLE` <br>
`done`
- Les boucles WHILE <br>
`while [ condition ];` <br>
`do` <br>
&nbsp;&nbsp;&nbsp;&nbsp; `#continue à boucler`<br>
`done` 

### Partie HTML
lynx -dump -nolist plurital.org

wget, cURL

## Séance du 24 octobre
> mini-projet

HTML (HyperText Markup Language)
- Ouvrantes : `<balise>` → le début d’une zone
- Fermantes : `</balise>` → la fin d’une zone
- Autofermantes ou vides : `<balise/>` → position dans le document

Pour créer un tableau en HTML, nous avons besoin de 4 balises :
- table : la balise racine du tableau
- `tr` : **t**able **r**ow, une ligne (se place dans table)
- `th` : **t**able **h**eader, une cellule d’entête (seulement la première ligne)
- `td` : **t**able **d**ata, une cellule classique (toutes les lignes pas entête)
