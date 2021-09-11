#!/usr/bin/env bash

# $@ - List of result files produced by algo2

# Computes the average running time and its standard deviation from the list of
# result files produced by algo2.

current_dir="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 && pwd)"

tmp_file=$(mktemp)
bash "$current_dir"/algo2_times.sh "$@" | tee "$tmp_file"
bash "$current_dir/avg_std.sh" <"$tmp_file"
rm "$tmp_file"
