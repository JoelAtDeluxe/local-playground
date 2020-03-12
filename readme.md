# Local ${lang} Playground

A easier, better way to get a local playgroun experience

because [Go's Playground](play.golang.org) kind of sucks.

## Setup / Using

Open up your .bashrc / .bash_profile / .zshrc file (or equivalent) and add on something like this:

`alias play=$(path/to/scratch/dir)/play.sh`

Then run with:
`play <lang>`
e.g. `play go`

## requirements

* Linux
  * Maybe OSX will work too
* shuf
* dictionary words (stored under `/usr/share/dict/words`)
* sed
* echo
* visual studio code
