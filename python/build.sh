#! /usr/bin/env bash

set -e

here="$(pwd)/$(dirname "$0")"

project=$1
mkdir -p $project
cd $project

filename=main.py
touch $filename

echo "# Scratch file located here: $(pwd)" >> $filename
echo "" >> $filename
cat $here/helloworld.py >> $filename

echo "$(pwd)/$filename"
