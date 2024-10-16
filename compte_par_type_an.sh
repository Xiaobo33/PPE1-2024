#!/bin/bash

if [ $# -ne 1 ]; 
then
    echo "Usage: $0 <entity_type>"
    exit 1
fi

entity=$1

for year in 2016 2017 2018; 
do
    count=$(./compte_par_type.sh $year $entity)
    echo "Annotations de type $entity en $year : $count"
done
