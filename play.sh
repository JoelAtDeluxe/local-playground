#! /usr/bin/env bash

rand_word() {
    dictionary=/usr/share/dict/words
    
    word=$(shuf -n1 $dictionary)

    until [[ ! $word =~ "'" ]]
    do
        word=$(shuf -n1 $dictionary)
    done

    echo $word
}

# Move to scratch root
cd "$(dirname "$0")/"

lang=$1
if [ -z $lang ]; then 
    echo "Missing language"
    exit
fi

now=$(date -u +%Y%m%d)
subfile="make_$lang.sh"
label="$(rand_word)_$(rand_word)"

if [ ! -f "$lang/build.sh" ]; then
    echo "Language \"$lang\" not supported"
    exit
fi

project_dir="$(pwd)/playgrounds/$lang/$now-$label"

pref_file=$(./$lang/build.sh "$project_dir")

code "$project_dir" -g "$pref_file"
