#! /usr/bin/env bash

set -e

here="$(pwd)/$(dirname "$0")"

project=$1
mkdir $project
cd $project
go mod init scratch

filename=main.go
touch $filename

echo "// Scratch file located here:" >> $filename
echo " $(pwd)" >> $filename
echo "" >> $filename
cat $here/hello_world.go >> $filename

echo "$(pwd)/$filename"
