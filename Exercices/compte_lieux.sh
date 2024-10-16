#!/bin/bash

if [ $# -ne 3 ]; 
then
    echo "Usage: $0 <year> <month> <nombre_places>"
    exit 1
fi

year=$1
month=$2
nb_places=$3

grep "Location" /home/sibel/exercice1/ann/"$year"*"-$month"*.ann | cut -f3 | sort | uniq -c | sort -nr | head -n "$nb_places"
