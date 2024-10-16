#Journal de bord du projet encadré
## Semaine 1
Évaluation : 
40% travail individuel
60% projet en groupe, une personne de chaque université

Le projet : La vie des mots sur le Web
projet initiatique à la linguistique de corpus et à Unix
projet à 3
étudier l’usage un mot et ses variations en plusieurs langues sur le web (sémantique des langues et la traduction)
constituer un corpus multilingue - ensemble de textes compilés
constitution à l’aide d’outil Unix - occasion d’apprendre les outils avec une utilisation concrète de récolte des données textuelles et leur nettoyage.

L’ensemble des données sur la machine sont regroupées en une seule arborescence, il est intéressant de pouvoir identifier les fichiers et les dossiers par un chemin dans l’arbre.

/ désigne la racine de l’arbre
~/ désigne le dossier personnel de l'utilisateur (home)
./ désigne le dossier courant (working directory)
../ désigne le dossier parent

Un chemin est formé par une suite de noms de dossiers séparés par des / . pouvant se finir par le nom d’un fichier.

un chemin absolu : décrit la position en partant de la racine
eg : /home/pierre/PPE1
un chemin relatif : décrit la position en partant du dossier courant
eg : ../../dev/input/mouse3

Les jokers
dans un chemin : 
? remplacer n'importe quel caractère (unique) 
* remplacer n’importe quelle suite de caractères

Les commandes sont les fichiers : 
qui ont la propriété d’être exécutables
qui sont placés par convention
cd (change directory), ls (lister le contenu d’un dossier), pwd, cat, less, wc, echo, head, tail, mkdir, cp, mv, rm, rmdir, file …
Options ( - o ou - - option avec deux tirets)
Arguments sont des chemins vers des fichiers mais pas tjrs
eg : ls option argument

Pour exercices : 
Dans un fichier de archive-1, on crée des arborescences avec mkdir -p, et puis déplace les fichiers par types, années et lieux avec mv.

## Semaine 2 : 
J'ai créé un fichier dans mon github et le copié dans ma machine locale, et puis édité le fichier de github.
Nouvelle commandes que j'ai appris : 

git clone : copier un dépôt Git distant (sur GitHub) sur la machine locale

git status : pour savoir l'état actuel du dépôt de Git

git push : pousser les commits vers le dépôt distant

git commit : enregistre les modifications dans le dépôt local

## Semaine 3 : 

J'ai d'abord appris à compter le nombre d'annotations dans des fichiers .ann pour chaque année (2016, 2017, 2018) et à écrire ces résultats dans un fichier comptes.txt de github. Pour ce faire, j'ai utilisé des commandes comme grep et wc pour rechercher et compter les lignes contenant des annotations spécifiques.

Ensuite, j'ai recherché et compté les annotations spécifiques des Locations. Pareil exercice mais cela m'aide à bien comprendre les commandes et les mieux matrîser.

Ce qui est difficile pour moi c'est la troisème exercice, pour chaque année, j'ai extrait les 15 lieux les plus fréquemment mentionnés en comptant et triant les occurrences de chaque lieu. J'ai demandé à chatgpt pour m'enseigner les commandes que je savais pas, voici un exemple dans mon exercice: 

grep "Location" *.ann | awk '{print $NF}' | sort | uniq -c | sort -nr | head -n 15 > ~/PPE1-2024/Exercices/classement_2018.txt


Cette ligne doit rester après correction 

## Semaine 4 :

### Cette semaine on d'abord corriger les exercices de la semaine dernière, voici les notes pour l'ex : 

grep "Location" *.ann | awk '{print $NF}' | sort | uniq -c | sort -nr | head -n 15 > ~/PPE1-2024/Exercices/classement_2018.txt
unic -c fusionner les résultats identiques et montrer le nombre d'occurrences
sort -nr trier les résultats en ordre décroissant (croissant : sort -n)
tail -n 15 ignorer tous ces que précédé
pour trier les résultats dans le mois mars : *????_03_??-???*.ann

si on push un mauvais fichier en ligne dans github : par ex. oups.md
git rm oups.md
git commit -m “retirer oups.md” et push
git fetch pour récupérer l'état de ligne 
git stash conserver les travaux temporairement 

### Et puis on a aussi des nouvelles choses à faire : script

L'explication de script dans le diapos : 

Pour vérifier la valide d'un URL

Dans l'environnement bash : 

#!/usr/bin/bash

Verification des arguments :

if [ $# -ne 1 ]; then
    echo "Ce programme demande un argument"
    exit
fi

Définir les variables : 

FICHIER_URLS=$1
OK=0
NOK=0

Boucle de lecture : 
(si c commence pas ~^http?://)
while read -r LINE; do
    echo "La ligne : $LINE"
    if [[ $LINE =~ ^https?:// ]]; then
        echo "Ressemble à une URL valide"
        OK=$((OK + 1))
    else
        echo "Ne ressemble pas à une URL valide"
        NOK=$((NOK + 1))
    fi
done < "$FICHIER_URLS"

L'affichage de nombre totale de ligne ok et pas ok : 

echo "$OK URLs et $NOK lignes douteuses"

####################################
Selon Chatgpt, ^ dans ^http?:// représente le début de la ligne. Il indique que la correspondance doit commencer à partir du début de la chaîne. Les autres sont les expressions réguilières.