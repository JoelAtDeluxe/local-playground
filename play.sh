#! /usr/bin/env bash

# Move to scratch root
cd "$(dirname "$0")/"

lang=$1
if [ -z $lang ]; then 
    echo "Missing language"
    exit
fi

dictionary=/usr/share/dict/words
now=$(date -u +%Y%m%d)
subfile="make_$lang.sh"
label=$(shuf -n2 $dictionary | sed -z --expression='s/\n/_/'
)

if [ ! -f "$lang/build.sh" ]; then
    echo "Language \"$lang\" not supported"
    exit
fi

project_dir="$(pwd)/playgrounds/$lang/$now-$label"

pref_file=$(./$lang/build.sh "$project_dir")

code "$project_dir" -g "$pref_file"
