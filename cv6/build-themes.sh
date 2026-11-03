#!/usr/bin/env bash
# ============================================================
#  Cvičenie 6, úloha 3 (6.7): generovanie variantov prezentácie
#  s rôznymi témami (\usetheme) a farebnosťami (\usecolortheme).
#
#  Vezme šablónu prez-themes.tex, nahradí riadky @@THEME@@
#  a @@COLORLINE@@ a preloží každý variant (dvakrát, kvôli obsahu)
#  do priečinka themes/.
#
#  Spustenie:  ./build-themes.sh
# ============================================================
set -euo pipefail
cd "$(dirname "$0")"
export MIKTEX_AUTOINSTALL=0

outdir="themes"
mkdir -p "$outdir"
rm -f "$outdir"/*.pdf

# dvojice téma:farebnosť ; "-" znamená predvolenú farebnosť témy
combos=(
  "Warsaw:seahorse"
  "Antibes:dolphin"
  "JuanLesPins:rose"
  "Goettingen:beaver"
  "Madrid:-"
  "Berlin:wolverine"
  "CambridgeUS:crane"
)

for combo in "${combos[@]}"; do
  theme="${combo%%:*}"
  color="${combo##*:}"

  if [ "$color" = "-" ]; then
    name="${theme}-default"
    colorline="% predvolená farebnosť témy ${theme}"
  else
    name="${theme}-${color}"
    colorline="\\usecolortheme{${color}}"
  fi

  src="${outdir}/${name}.tex"
  # značku @@THMESETTINGS@@ nahradíme dvoma riadkami s témou a farebnosťou;
  # hodnoty odovzdávame cez prostredie, aby sa nemuseli escapovať v awk.
  THEME="$theme" COLORLINE="$colorline" awk '
    /@@THMESETTINGS@@/ {
      print "\\usetheme{" ENVIRON["THEME"] "}"
      print ENVIRON["COLORLINE"]
      next
    }
    { print }
  ' prez-themes.tex > "$src"

  echo ">>> ${theme} + ${color}: prekladám ${name}"
  # dvakrát, aby sa vygeneroval obsah a číslovanie
  pdflatex -interaction=nonstopmode -halt-on-error \
           -output-directory="$outdir" "$src" > "${outdir}/${name}.log1" 2>&1
  pdflatex -interaction=nonstopmode -halt-on-error \
           -output-directory="$outdir" "$src" > "${outdir}/${name}.log2" 2>&1

  # upratanie pomocných súborov, ponecháme len .pdf
  rm -f "$src" "$outdir/${name}.aux" "$outdir/${name}.log" \
        "$outdir/${name}.nav" "$outdir/${name}.out" "$outdir/${name}.snm" \
        "$outdir/${name}.toc" \
        "$outdir/${name}.log1" "$outdir/${name}.log2"
done

echo "Hotovo. Výstupy sú v priečinku ${outdir}/:"
ls -1 "$outdir"/*.pdf
