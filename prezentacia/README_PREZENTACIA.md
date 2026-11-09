# Prezentácia projektu FAKERADAR — Metódy inžinierskej práce (2026/27)

Prezentácia v LaTeXu (balík **beamer**, odvodená zo šablóny `prez.tex` z cvičenia c06),
zodpovedá požiadavkám zadania „Prezentácia projektu“ → <https://www2.fiit.stuba.sk/~lang/mip/projekt/index.html#prez>.

## Obsah priečinka

| Súbor | Čo to je |
|---|---|
| `prezentacia.tex` | zdrojový tvar prezentácie (LaTeX beamer) |
| `prezentacia.pdf` | preložená prezentácia (21 slajdov / 23 strán PDF — bibliografia sa láme na viac strán) |
| `literatura.bib` | bibliografia (BibTeX), kópia z článku |
| `img/diagram1.pdf`, `img/diagram2.pdf` | diagramy vložené do slajdov |
| `img/diagram1.uxf`, `img/diagram2.uxf` | **zdrojové tvary diagramov (UMLet)** |
| `img/STU-FIIT-nfv.pdf`, `img/STU-FIIT-nfv.png` | logo FIIT |
| `tabulky/tabulky_fakeradar.xlsx` | **tabuľky v LibreOffice Calc/Excel so vzorcami** (2 listy) |
| `tabulky/vyhodnotenie.csv`, `tabulky/harmonogram.csv` | rýchly náhľad dát tabuliek |
| `speakers-notes.md` | **speaker's notes** — čo presne povedať na každom slajde + Q&A cheat sheet |

## Ako preložiť

```bash
latexmk -pdf prezentacia.tex      # alebo: pdflatex + bibtex + pdflatex + pdflatex
```

Téma a farebnosť sa menia v preambule príkazmi `\usetheme{...}` a `\usecolortheme{...}`
(komentované varianty: Warsaw, JuanLesPins, Goettingen, Boadilla, seahorse, rose, beaver).

## Mapovanie na hodnotiace kritériá (30 b spolu)

**Slajdy (8 b)**
- **Diagram 2 b** — diagramy `diagram1`/`diagram2` (proces detekcie, architektúra extraktora),
  vytvorené v **UMLete** (zdroje `.uxf`), vložené na slajde „Diagram…“ a „FAKERADAR: modulárny hybridný detektor“.
- **Tabuľka 2 b** — tabuľka `tabulky_fakeradar.xlsx` vytvorená v **adekvátnom nástroji** (Excel/LibreOffice),
  hodnoty **počítané vzorcami**: list *Vyhodnotenie* (`SUMPRODUCT` váh × skóre, kontrola `SUM(váhy)=1`),
  list *Harmonogram* (`SUM` kapacít, medzisúčty po riešiteľoch cez `SUMIF`). Vo slajdoch je embedded
  kópia oboch tabuliek (slajdy „Vážené vyhodnotenie…“ a „Plán prác…“).
- **Rozsah a organizácia 4 b** — 21 slajdov ≥ požadovaných 7; jasná štruktúra: Motivácia → Prehľad →
  4 sekcie (úvod/ciele, stav poznania, porovnanie, návrh a plán) → zhodnotenie → otázky na diskusiu → zdroje;
  prehľad (`\tableofcontents`), číslovanie strán, odrážky 1. a 2. úrovne, poznámky o zdrojoch pod slajdom.

**Prednesenie (10 b)** — 15–20 minút, aktívne sa zúčastnia **všetci štyria** členovia tímu
(rozdeliť podľa nižšie uvedeného plánu, meno prednášajúceho je aj na prechodových slajdoch sekcií).

**Diskusia (12 b)** — predpripravené otázky na rozpätie diskusie sú na slajde „Otázky na diskusiu“;
každý člen má pripravené 2–3 vlastné argumenty k nim (viď nižšie).

## Plán prednesenia (~18 min)

| Čas | Časť (slajdy) | Prednáša |
|---|---|---|
| 0:00–4:30 | Titul, Motivácia, Prehľad, Úvod a ciele (1–5) | **Matvii Nosenko** |
| 4:30–13:00 | Súčasný stav: taxonómia, jazykové príznaky, behaviorálne príznaky, diagramy (6–10) | **Volodymyr Nedoluha** |
| 13:00–17:00 | Porovnanie: hybridné prístupy + LLM, tabuľky (11–14) | **Danylo Nikolenko** |
| 17:00–21:00 | Návrh a plán: prístup, ciele, harmonogram, zhodnotenie (15–19) | **Rostyslav Mykytiuk** |
| 21:00–22:00 | Otázky na diskusiu + poděkovanie (20) | **celý tím** |

Tipy: nepísať celé vety na slajd a neprečítať ich; každý slučka „problém → riešenie → číslo“;
repetitívne frázy („ako vidíme na slajde“) obmedziť; Čas strážený na hodinkách.

### Priebežné odpovede na diskusné otázky (pripraviť sa v tíme)
1. **Zákaz vs. označovanie AI recenzií** — náš postoj: označovanie + detekcia, zákaz je nevymáhateľný;
   argumentovať článkom Zhao a kol. 2025 (LLM recenzie sú plynulejšie než ľudské).
2. **Presnosť vs. vysvetliteľnosť** — moderátor je koncový používateľ; chyba bez vysvetlenia poškodí
   legitímneho zákazníka; preto SHAP-atribúcie sú v architektúre od začiatku.
3. **Studený štart** — jazykové príznaky fungujú aj bez histórie; preto hybrid, nie len behaviorálne modely.
4. **GDPR** — agregácia, anonymizácia, verejné datasety, spolupráca s platformou (článok, kap. Behaviorálne príznaky).

## Odovzdanie do AIS (podľa zadania)

- [ ] `prezentacia.tex` + `prezentacia.pdf` (zdroj a výstup)
- [ ] `img/diagram1.uxf`, `img/diagram2.uxf` + `img/diagram1.pdf`, `img/diagram2.pdf` (zdroje a vložené tvary obrázkov)
- [ ] `tabulky/tabulky_fakeradar.xlsx` (zdrojový tvar tabuliek so vzorcami)
- [ ] `literatura.bib` (použitá bibliografia)

## Nesúvisí s prezentáciou, ale patrí k cvičeniu 6 (urobiť v Jire/Gite)

1. Uzavrieť sprint `sprint_1_týždeň_5`, nezavŕšené úlohy presunúť do `sprint_2_týždeň_6`.
2. Do nového sprintu presunúť úlohy na pracovnú verziu projektu a na prezentáciu, každú ohodnotiť
   story pointami a priradiť členovi tímu (rozdelenie ako v pláne prednesenia vyššie), sprint spustiť.
3. Doinštalovať GitHub integráciu do Jiry (návod: youtube `e5yr7nIqTc8`).
4. Pre každú úlohu v sprinte vytvoriť v Jire prepojenie na commity v samostatnej vetve (branch) —
   odporúča sa jedna vetva na úlohu, napr. `feat/prez-slajdy-jazykove`, commity uvádzať s `ISSUE-č.`.
