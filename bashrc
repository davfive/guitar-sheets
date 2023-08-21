function chordpro {
    xchordpro=$(which chordpro)
    (set -x; "$xchordpro" "$1" && open ${1%.cho}.pdf)
}