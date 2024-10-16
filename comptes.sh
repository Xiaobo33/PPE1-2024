#!/bin/bash
for year in 2016 2017 2018; do
    count=$(grep -c "Location" *"$year"*.ann)
    echo "Annotations en $year : $count"
done