#! /usr/bin/env bash

set -e

here="$(pwd)/$(dirname "$0")"

project=$1
mkdir -p $project
cd $project

cp $here/package.json .
filename=index.js
touch $filename

echo "// Scratch file located here: $(pwd)" >> $filename
echo "" >> $filename
cat $here/index.js >> $filename

echo "$(pwd)/$filename"
