# Cvičenie 6 — poznámky k úlohám v LaTeXu (6.5, 6.6, 6.7)

Autor/tím: Matvii Nosenko, Volodymyr Nedoluha, Danylo Nikolenko, Rostyslav Mykytiuk
Dátum: 2026-11-03
Predmet: Metódy inžinierskej práce, Cvičenie 6 (<https://www2.fiit.stuba.sk/~lang/mip/cvicenia/c06.html>)

> Tento súbor je doplnkový dôkaz k Cvičeniu 6. Odovzdaný `clanok.tex` sa **nemení**.
> Úlohy pre Jira (6.1–6.4) sú v samostatnom súbore `JIRA_PLAN_CV6.md`.

---

## 6.5 — Stiahnutie a preklad vzoru `prez.tex`, porovnanie s `prez.pdf`

Zo stránky c06 sme stiahli vzorový zdroj a referenčný výstup:

| Súbor | Popis |
|---|---|
| `prez-original.tex` | stiahnutý vzor `prez.tex` (bez zmien) |
| `prez-vzor.pdf` | stiahnutý referenčný `prez.pdf` (9 strán) |
| `prez-original.pdf` | **náš** preklad vzoru (9 strán) |

Preklad:

```bash
pdflatex prez-original.tex
```

**Výsledok porovnania** (vizuálne aj počtom strán): náš `prez-original.pdf`
je s `prez-vzor.pdf` **totožný v rozložení aj počte slajdov (9)**. Overené
prekreslením strán do PNG (`pdftoppm`) — titulný slajd vyzerá rovnako
(názov, podnadpis, autor, inštitúcia, dátum, pätová lišta).

### Poznámka k „spustite preklad dvakrát“

V zadaní je upozornenie, že preklad treba spustiť dvakrát (obsah a číslovanie).
Pri vzore sme narazili na dve veci, ktoré stoja za vysvetlenie:

1. **Referenčný `prez-vzor.pdf` má prázdny obsah.** Slajd „Prehľad“ (3. strana)
   neobsahuje žiadne položky — vzor bol zrejme preložený tak, že `.toc` bol prázdny.
   Náš jednorazový preklad dáva rovnaký výsledok, teda sa vzoru zhoduje.
2. **Druhý preklad vzoru u nás skončí chybou** `! Missing $ inserted.` pri načítaní
   `.toc` s diakritikou. Príčina: kombinácia `inputenc` (utf8) a skratiek balíka
   `babel[slovak]` — pri druhom behu sa diakritika z `.toc` (zapísaná v `^^xx`
   tvare) spracuje so zapnutými skratkami a TeX ju nevie prečítať.
   **Riešenie** (použité v našej prezentácii, úloha 6.6): `\usepackage[slovak,shorthands=off]{babel}`
   — potom druhý preklad prebehne bez chyby a obsah sa korektne vygeneruje.
3. **Diakritika pri extrakcii textu.** Lokálny MiKTeX nemá nainštalované
   vektorové slovenské fonty (`cm-super` sa nepodarilo doinštalovať), preto vzor
   prekladal s bitmapovými fontmi **Type 3**. Tie sa vizuálne zobrazujú správne,
   ale `pdftotext` z nich vytiahne skomolené znaky. Referenčný PDF používa
   **Type 1** fonty (`SFSS…`) s korektnou mapou znakov. V našej prezentácii sme
   preto pridali `\usepackage{lmodern}` (vektorové fonty) — diakritika je
   korektná aj vizuálne, aj pri kopírovaní textu.

---

## 6.6 — Úprava vzoru na iniciálnu verziu našej prezentácie

Vznikol súbor **`prez.tex`** (a výstup **`prez.pdf`**, 15 slajdov). Oproti vzoru:

- **`\title`, `\author`, `\institute`, `\date`** — vyplnené podľa nášho článku
  „Detekcia falošných online recenzií na základe jazykových a behaviorálnych
  príznakov“ (zhodné s `clanok.tex` a `projekt-data.tex`).
- **Niekoľko častí** (`\section`): Úvod a motivácia, Súvisiace práce,
  Jazykové príznaky, Behaviorálne príznaky, Hybridné prístupy,
  Porovnanie a otvorené problémy, Navrhovaný prístup a `\section*` Zhodnotenie.
- **Slajdy s odrážkami 1. a 2. úrovne** — napr. „Prečo je to dôležité“,
  „Jazykové príznaky“, „Behaviorálne príznaky“, „Hybridné a moderné prístupy“.
- **Slajd s obrázkom** — „Proces detekcie – diagram z UMLet“
  (`\includegraphics{diagram1.pdf}`, súbor z `img/`).
- Naviazané ďalšie prvky z článku: rovnica dôveryhodnosti (exponenciálne
  vyhladzovanie) a tabuľka porovnania skupín príznakov — hodí sa k neskorším
  úlohám Cvičenia 7 (tabuľka s hodnotami, diagram v prezentácii).

Preklad (dva behy kvôli obsahu a číslovaniu):

```bash
pdflatex prez.tex && pdflatex prez.tex
```

Použitá téma/fea: `\usetheme{Warsaw}` + `\usecolortheme{seahorse}`.

---

## 6.7 — Experimenty s témou a farebnosťou

Téma (`\usetheme`) a farebnosť (`\usecolortheme`) sa menia dvoma príkazmi
v preambule. Pripravili sme šablónu **`prez-themes.tex`** a skript
**`build-themes.sh`**, ktorý vygeneruje a preloží 7 kombinácií do priečinka
`themes/`:

| Súbor | Téma | Farebnosť | Poznámka |
|---|---|---|---|
| `themes/Warsaw-seahorse.pdf` | Warsaw | seahorse | použitá v `prez.tex` (bočný panel s obsahom) |
| `themes/Antibes-dolphin.pdf` | Antibes | dolphin | modrá, bez bočného panela |
| `themes/JuanLesPins-rose.pdf` | JuanLesPins | rose | teplé tóny |
| `themes/Goettingen-beaver.pdf` | Goettingen | beaver | bočný panel, hnedá |
| `themes/Madrid-default.pdf` | Madrid | (predvolená) | čistá hlavička a päta |
| `themes/Berlin-wolverine.pdf` | Berlin | wolverine | široká hlavička, žltá |
| `themes/CambridgeUS-crane.pdf` | CambridgeUS | crane | akademický vzhľad |

Spustenie:

```bash
./build-themes.sh
```

Výber: pre našu prezentáciu sme zvolili **Warsaw + seahorse**, pretože bočný
panel priebežne zobrazuje obsah (prehľadnosť pri 15 slajdoch) a farebnosť dobre
kontrastuje s čiernym textom aj pri premietaní. Alternatívy sú pripravené
a kedykoľvek vymeniteľné dvoma riadkami v `prez.tex`.

---

## Kontrolný zoznam artefaktov (priečinok `cv6/`)

- [x] `prez-original.tex` + `prez-original.pdf` — stiahnutý a preložený vzor (6.5)
- [x] `prez-vzor.pdf` — referenčný výstup zo stránky c06 (6.5)
- [x] `prez.tex` + `prez.pdf` — naša prezentácia, 15 slajdov (6.6)
- [x] `prez-themes.tex` + `build-themes.sh` + `themes/*.pdf` — experimenty s témou a farbami (6.7)
- [x] `poznamky.md` — tento súbor
- [x] `JIRA_PLAN_CV6.md` — úlohy 6.1–6.4 pre Jira
