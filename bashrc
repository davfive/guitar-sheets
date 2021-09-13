function chogen () {
  chofile=${@: -1}
  outpdf=$(echo "$chofile" | sed -E "s/\.[^\.]+$/.pdf/")

  (set -x ; chordpro --config=config.json "$@" -o "$outpdf")
  open "$outpdf"
}

function chogen-chart () {
  chofile=${@: -1}
  outpdf=$(echo "$chofile" | sed -E "s/\.[^\.]+$/.pdf/")

  (set -x; chordpro --config=config.charts.json "$@" -o "$outpdf")
  open "$outpdf"
}