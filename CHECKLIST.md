# CHECKLIST — Predbežná verzia projektu (MIP)

Deadline predbežnej verzie: **01.11.2026 23:59**, odovzdanie v AIS (termín overený na webe predmetu).

## Stav

**Technicky pripravené, obsahovo ešte nie finálne na odovzdanie.** Všetky štyri dokumenty sa kompilujú:

| Dokument | PDF | Strany | Kontrola kompilácie |
|---|---|---:|---|
| Článok | `clanok.pdf` | 7 | 0 overfull, 0 undefined, 0 `??` |
| VV-A až VV-E | `ziadost_VV-A-E.pdf` | 9 | 0 overfull, 0 undefined, 0 `??` |
| VV-F | `vv-f.pdf` | 8 | 0 overfull, 0 undefined, 0 `??` |
| Zameranie | `zameranie.pdf` | 1 | 0 overfull, 0 undefined, 0 `??` |

Článok má **13 citovaných zdrojov** a 13 záznamov BibTeX (všetky záznamy citované, bez chýbajúcich kľúčov). VV-F je pod limitom 15 strán.

## A. Už splnené požiadavky webu

- [x] Schválené zameranie z 04.10.2026 nájdené v `old_zameranie_clanok.tex/.pdf`; tím uvádza hodnotenie 5/5.
- [x] Slovenský názov v článku a formulároch zhodný so schváleným zameraním.
- [x] Schválená anotácia (369 znakov) prevzatá do `projekt-data.tex`, `zameranie.tex` a VV-A1.
- [x] Samostatný `zameranie.tex` + PDF pre VV-A1-03/04/09.
- [x] Článok v LaTeXu/PDF, trieda `article`, 7 strán (minimum predbežnej verzie: 4).
- [x] Článok cituje 13 zdrojov cez BibTeX (predbežná verzia vyžaduje primárny zdroj + aspoň 7 ďalších; finálna verzia stránky uvádza aspoň 12).
- [x] BibTeX, diagramy v zdrojovom `.uxf` a vloženom `.pdf`, tabuľka priamo v LaTeXu.
- [x] VV-A–E a VV-F majú LaTeX aj PDF; VV-F má 8 strán (limit 15).
- [x] Formulácie VV-A3/A4/B/C/D/E a VV-F zosúladené s polami/štruktúrou oficiálnych vzorov APVV.
- [x] Meno cvičiaceho `Ing. Ivan Kapustík` uvedené v článku.
- [x] PI v súčasných dokumentoch nastavený na `Ing. Ivan Kapustík`, kým tím si to s ním nepotvrdí.

## B. Potvrdiť u Ing. Kapustíka / tímu — pred nahraním do AIS

- [ ] **Akronym FAKERADAR** — v schválenom zameraní akronymu nebolo; v `zameranie.tex` a `projekt-data.tex` je náš návrh. Potvrdiť alebo nahradiť.
- [ ] **Anglický názov** — v schválenom zameraní nebol; je náš preklad. Potvrdiť alebo nahradiť.
- [ ] **Či Ing. Kapustík môže byť zodpovedným riešiteľom (PI)** — zatiaľ je uvedený na žiadosť študenta, ale treba jeho súhlas/potvrdenie.
- [ ] **Základné údaje PI:** telefón, ORCID a prípadné ďalšie vedecké ID, či je mladým pracovníkom (v aktuálnom návrhu „nie“), prípadné expertízy a chránené aplikačné výstupy.
- [ ] **CV PI pre VV-F:** najviac 5 dôležitých výstupov za posledných 5 rokov; najviac 3 projekty za posledných 5 rokov (názov, grantová schéma, roky, rozpočet, jeho rola); expertízy a význam výstupov. Zatiaľ sú v tabuľkách „doplniť“ — nič nevymýšľať.
- [ ] **Riešitelia VV-A3:** skontrolovať, kto má byť uvedený; doplniť dátumy narodenia a počet hodín/rok (ak sú podľa zadania skutočne potrebné).
- [ ] **Modelové parametre projektu:** potvrdiť alebo upraviť začiatok/koniec 01/2027–12/2029, TRL 3→6, rozpočet 300 000 EUR (APVV 268 000 + spolufinancovanie 32 000), cieľ datasetu 15 000, F1 ciele, pilotní partneri/odberatelia.
- [ ] Skontrolovať všetky predpoklady VV-F (napr. výpočtová infraštruktúra, zamýšľaný dataset, plánovaný pilot) s tímom, aby nevyzerali ako už potvrdené fakty.

### Kam vložiť odpovede

- `projekt-data.tex`: `\projectAcronym`, `\projectTitleEN`, `\projectId` (teraz „Zatiaľ nepridelené“), dátumy/rozpočet, `\piName`, `\piEmail`, `\applicantPhone` a ostatné spoločné údaje.
- `ziadost_VV-A-E.tex`: VV-A3 tabuľka (dátum narodenia, hodiny), VV-A4 polia 02–09 a čestné vyhlásenie PI.
- `vv-f.tex`: Excelentnosť §1.6 — tabulka max. 5 výstupov, tabuľka max. 3 projektov; doplniť expertné výsledky a potvrdiť opis kompetencií PI/tímu.
- `zameranie.tex`: návodne zobrazuje odvodené anglické pomenovanie a akronym; po potvrdení zmeniť spoločné hodnoty v `projekt-data.tex` a odstrániť poznámky „návrh“.

## C. Pozor pred odovzdaním

- [ ] V dokumentoch sa používajú modelové výskumné ciele, rozpočet, termíny, TRL a zamýšľané výstupy. Potvrdiť ich tímom/cvičiacim; ak ešte nie sú schválené, jasne ponechať ako návrh, nie ako fakt.
- [ ] VV-E je modelové čestné vyhlásenie, nie skutočne podpísané vyhlásenie štatutárneho zástupcu. Neprezentovať ho ako právne podaný/podpísaný formulár.
- [ ] Tieto LaTeX súbory sú semestrálne modelové dokumenty. Zadanie žiada LaTeX/PDF výstupy; skutočná grantová žiadosť APVV sa podáva v príslušnom systéme a podľa platnej výzvy.
- [ ] Názov AIS/UIS miesta odovzdania a jeho aktuálny obsah potvrdiť priamo v AIS; web predmetu uvádza AIS.
- [ ] Po potvrdení vyššie uvedených údajov znovu skompilovať všetky štyri `.tex` a skontrolovať PDF.

## D. Súbory na AIS

- [ ] `zameranie.tex` + `zameranie.pdf`
- [ ] `ziadost_VV-A-E.tex` + `ziadost_VV-A-E.pdf`
- [ ] `vv-f.tex` + `vv-f.pdf`
- [ ] `clanok.tex` + `clanok.pdf` + `literatura.bib`
- [ ] `img/diagram1.uxf`, `img/diagram2.uxf`, `img/diagram1.pdf`, `img/diagram2.pdf`
- [ ] Predbežná verzia odovzdaná do **01.11.2026 23:59**.
