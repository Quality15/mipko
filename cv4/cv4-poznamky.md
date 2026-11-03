# Cvičenie 4 — poznámky k úlohám 4.5–4.7 a 4.9

Autor/tím: Matvii Nosenko, Volodymyr Nedoluha, Danylo Nikolenko, Rostyslav Mykytiuk
Dátum: 2026-11-03

> Tento súbor je doplnkový dôkaz k Cvičeniu 4. Odovzdaný `clanok.tex` sa **nemení**.

---

## 4.5 / 4.6 — Overleaf ↔ MiKTeX (round-trip)

Cieľ: overiť, že ten istý zdroj sa dá preložiť lokálne v MiKTeX-e aj v cloude
(Overleaf) a že zmeny sa medzi prostrediami prenášajú.

**Lokálna časť (MiKTeX) — overené:**

```
latexmk -pdf clanok.tex        # návratový kód 0, clanok.pdf sa vytvorí
```

- Použitý engine: `MiKTeX-pdfTeX 4.10 (MiKTeX 22.1)`.
- Preklad prebehol bez chýb; výstup `clanok.pdf` (7 strán) je aktuálny.

**Cloudová časť (Overleaf) — pripravené, treba dokončiť 2 kliknutiami:**

1. Overleaf → *New Project → Upload Project*.
2. Nahrať `cv4/overleaf-upload.zip` (obsahuje `*.tex`, `*.bib` a `img/`).
3. Overleaf nastaví kompilátor `pdfLaTeX` (Menu → Compiler → pdfLaTeX).
4. **Change (test round-trip):** v Overleaf upraviť, napr., `\date{...}` alebo
   `\section{Úvod}`, preložiť a stiahnuť zmenu späť (`Menu → Download → Source`).
5. Porovnať: lokálny a cloudový PDF majú byť obsahovo identické (líšiť sa môže
   len verzia balíkov/dátum).

> Poznámka: keďže Overleaf aj MiKTeX prekladajú **ten istý zdroj**, výstup je
> rovnaký; rozdiel je len v prostredí a verziách balíkov. Presný zoznam krokov je
> hore, aby sa round-trip dal zopakovať kedykoľvek.

### Overleaf-ready balík

`cv4/overleaf-upload.zip` obsahuje zdroje potrebné na preklad (bez pomocných
súborov a bez záložnej kópie):

- `clanok.tex`, `vv-f.tex`, `ziadost_VV-A-E.tex`, `projekt-data.tex`,
  `zameranie.tex`,
- `literatura.bib`,
- `img/` (diagramy `.uxf`/`.pdf`, logo FIIT),
- `cv4/` (tento Cvičenie-4 dôkaz).

---

## 4.7 — Zmeny vlastností obrázkov/diagramov

Vykonané v samostatnom dokumente `cv4/cv4-obrazky.tex` (a overené prekladom do
PDF). Vyskúšali sme:

| Vlastnosť | Príkaz v LaTeXu | Výsledok |
|---|---|---|
| Veľkosť (relatívna) | `width=0.4\linewidth` | obrázok škálovaný na 40 % šírky riadka |
| Veľkosť (pomerová) | `scale=0.25` | zmenšenie na 25 % |
| Výška + pomer strán | `height=3.5cm,keepaspectratio` | pevná výška, šírka sa dopočíta |
| Rotácia | `angle=15`, `angle=45,origin=c`, `angle=90` | rôzne uhly, `origin=c` = okolo stredu |
| Zarovnanie | `\makebox[\textwidth][l/c/r]{...}` | vľavo / na stred / vpravo |
| Pozícia (plávajúci) | `figure [h]/[t]/[b]/[p]` | sadzač sám vyberie vhodné miesto |
| Pozícia (neplávajúci) | `center` + `\captionof` | obrázok ostáva presne v texte |
| Obtekanie textom | `wrapfigure{r}{0.3\textwidth}` | text obtáča obrázok (ako logo FIIT) |
| Orezanie | `trim=1cm 1cm 1cm 1cm,clip` | odrezané okraje |

Rovnaké parametre sú prenositeľné do Overleafu, keďže ide o ten istý balík
`graphicx`/`wrapfig`.

---

## 4.9 — Matica 5×4 a dlhý vzorec: LaTeX vs. MS Word

Matica a viacriadkový vzorec sú v článku (`clanok.tex`, rovnice `\ref{eq:matica}`
a `\ref{eq:postupnost}`). Tie isté sme vytvorili v **MS Word** → `cv4/cv4-word.docx`
(rovnice sú nativne Word rovnice, OMML; súbor vznikol z `cv4-word.md` príkazom
`pandoc cv4-word.md -o cv4-word.docx`).

### Zistené rozdiely

| Hľadisko | LaTeX (MiKTeX/Overleaf) | MS Word |
|---|---|---|
| Spôsob zápisu | zdrojový text, matematika cez `amsmath` (`pmatrix`, `multline`) | grafický editor rovníc (OMML), klikanie |
| Matica | `\begin{pmatrix}...\end{pmatrix}` — riadky/stĺpce oddeľuje `&` a `\\` | rovnica s maticou alebo tabuľka; ručne sa nastavuje zarovnanie buniek |
| Dlhý vzorec | `multline` sám zalomí riadok a zarovná | zalomenie a zarovnanie je potrebné urobiť ručne |
| Typografia | jednotný vzhľad celej práce, automatické číslovanie rovníc | závisí od štýlu dokumentu a verzie Wordu |
| Verzionovanie | čistý text → dobré `git diff` | binárny `.docx` → `git diff` nevidí zmeny |
| Prenositeľnosť | rovnaký zdroj → rovnaký výstup (Overleaf/MiKTeX) | vzhľad závisí od nainštalovaných fontov |
| Výmena pripomienok | komentáre cez `%`, kontrola v repozitári | Track Changes a komentáre v samotnom Worde |
| Vhodnosť | vedecký/technický text, opakovateľné zostavenie | rýchle ad-hoc úpravy, práca s pripomienkami |

**Záver:** Word je pohodlnejší na okamžité vizuálne úpravy, ale pri matematike
(hlavne pri maticiach a dlhých vzorcoch) vyžaduje veľa ručnej práce a horšie sa
verzionuje. LaTeX je pre tento typ textu presnejší, opakovateľný a lepšie sa
verzionuje — preto zostávame pri LaTeXu (v súlade so zadaním predmetu).

---

## Kontrolný zoznam artefaktov

- [x] `cv4/cv4-obrazky.tex` + `cv4/cv4-obrazky.pdf` (úloha 7)
- [x] `cv4/cv4-word.md` + `cv4/cv4-word.docx` (úloha 9, Word)
- [x] `cv4/cv4-poznamky.md` (tento súbor)
- [x] `cv4/overleaf-upload.zip` (úlohy 5/6)
- [x] `clanok.tex`/`clanok.pdf` preložené lokálne bez chýb (úlohy 5/6)
