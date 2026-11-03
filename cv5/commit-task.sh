#!/usr/bin/env bash
# Pomocník pre Cvičenie 5 (úloha 5.17).
# Vytvorí commit v predpísanom formáte: "<Issue key, číslo úlohy> <text správy>"
#
# Použitie:
#   ./cv5/commit-task.sh <ISSUE_KEY> <CISLO_ULOHY> <TEXT_SPRAVY>
#
# Príklad:
#   ./cv5/commit-task.sh FAKERADAR-3 5.16 "rozsirenie clanku na 7 stran"
#
# Voliteľne: ak chcete commitnúť len konkrétne súbory, odovzdajte ich ako 4.+ argument:
#   ./cv5/commit-task.sh FAKERADAR-3 5.16 "text" clanok.tex literatura.bib

set -euo pipefail

if [ "$#" -lt 3 ]; then
  echo "Použitie: $0 <ISSUE_KEY> <CISLO_ULOHY> <TEXT_SPRAVY> [súbory...]" >&2
  echo "Príklad:  $0 FAKERADAR-3 5.16 \"rozsirenie clanku na 7 stran\"" >&2
  exit 1
fi

KEY="$1"
TASK="$2"
MSG="$3"
shift 3

if [ "$#" -gt 0 ]; then
  git add -- "$@"
else
  git add -A
fi

if git diff --cached --quiet; then
  echo "Nie sú žiadne zmeny na commit (index je prázdny)." >&2
  exit 1
fi

git commit -m "${KEY}, ${TASK} ${MSG}"
echo "OK: commit vytvorený s message \"${KEY}, ${TASK} ${MSG}\""
