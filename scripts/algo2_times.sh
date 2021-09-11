#!/usr/bin/env bash

# $@ - List of result files produced by algo2

# Extracts the running times from the list of results produced by algo2.

for file in "$@"; do
    tail -n 1 "$file" | awk '{print $2}'
done
