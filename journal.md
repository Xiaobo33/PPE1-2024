#Journal de bord du projet encadré
## Semaine 1


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
