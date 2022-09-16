#! /usr/bin/env bash

set -e

here="$(pwd)/$(dirname "$0")"

project=$1
mkdir -p $project
cd $project

cp $here/Makefile .
filename=main.cpp
touch $filename

echo "// Scratch file located here: $(pwd)" >> $filename
echo "" >> $filename
cat $here/hello_world.cpp >> $filename

echo "$(pwd)/$filename"
