#!/usr/bin/env bash

# $1 - Number of qubits
# $2 - T-depth target

# Computes algo2 time and space statistics from existing algo2 result files.

current_dir="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 && pwd)"
results_dir="$current_dir/../results/"

echo "n=$1, d=$2"
echo Time
bash "$current_dir"/algo2_time_stats.sh \
    "$results_dir"/algo2/n"$1"_rand/results_algo2_rand_n"$1"_d"$2"_* |
    tail -n 3
echo Space
bash "$current_dir"/algo2_space_stats.sh \
    "$results_dir"/algo2/n"$1"_rand/results_algo2_rand_n"$1"_d"$2"_* |
    tail -n 3
