function cho2pdf {
    xchordpro=$(which chordpro)
    (set -x; chordpro "$1" && open ${1%.cho}.pdf)
}