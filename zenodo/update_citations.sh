#!/usr/bin/env bash

# Find all contributors according to git and update `zenodo.json` accordingly.

# Execute this file from the GR root folder!

script_name=$0
full_script_name=$(realpath $script_name)
script_full_path=$(dirname $full_script_name)
python_script=$"$script_full_path/run_citations_update.py"

contributors_list="$(git log --pretty="%an <%ae>" | sort | uniq)"
# Run a Python script to make things easier.
python3 $python_script "$contributors_list"

zenodo_reference_file=$"$script_full_path/zenodo-main.json"
zenodo_target_filename=".zenodo.json"
zenodo_target_file=$"$(pwd)/$zenodo_target_filename"
cp $zenodo_reference_file $zenodo_target_file
