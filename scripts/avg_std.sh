#!/bin/bash

# $@ - List of result files produced by algo2

# Computes the average and standard deviation of a list of numbers read from
# the standard input.

# Inspired from
# https://maravelias.info/2010/06/mean-standard-deviation-column-awk/

in_file=$(mktemp)
num_samples=0
while read -r line; do
    ((num_samples++))
    echo "$line" >>"$in_file"
done
echo "Samples: $num_samples"

awk '{delta = $1 - avg; avg += delta / NR;
    mean2 += delta * ($1 - avg)};
    END{
        printf("Average: %2.2f\n", avg);
        printf("Standard deviation: %2.2f\n", sqrt(mean2 / (NR)))
    }' "$in_file"
rm "$in_file"
