#!/bin/bash

if [ $# -ne 2 ]; 
then
    echo "Usage: $0 <year> <entity_type>"
    exit 1
fi

year=$1
entity=$2

count=$(grep -c "$entity" /home/sibel/exercice1/ann/"$year"*.ann | wc -l)
echo $count
