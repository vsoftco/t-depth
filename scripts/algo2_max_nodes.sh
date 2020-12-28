#!/bin/bash

# $@ - List of result files produced by algo2

# Extracts the maximum number of nodes per hyper-tree level from the list of
# results produced by algo2.

for file in "$@"; do
    tail -n 3 "$file" | head -n 1 | awk '{print $NF}'
done
