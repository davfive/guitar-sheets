function chordpro-song () {
  songfile=${@: -1}
  echo "$songfile"
  outfile=$(echo "$songfile" | sed -E "s/\.[^\.]+$/.pdf/")

  (set -x ; chordpro --config=chordpro-song.json "$@" -o "$outfile")
  open "$outfile"
}