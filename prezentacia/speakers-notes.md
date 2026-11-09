# Speaker's notes — FAKERADAR, prezentácia projektu (MIP 2026/27)

**Ako čítať tento dokument:** slovenský text = čo presne povedať (možno si to prispôsobiť vlastnými slovami,
dôležité je zachytiť pointu a čísla). *Kurzívne poznámky v ruštine* = réžia (kedy klikať, kam ukazovať, pauzy).

**Rozdelenie a čas (celkovo ~18 min):**

| Blok | Slajdy | Prednáša | Čas |
|---|---|---|---|
| Úvod a ciele | 1–5 | Matvii Nosenko | 0:00–4:30 |
| Súčasný stav | 6–10 | Volodymyr Nedoluha | 4:30–13:00 |
| Porovnanie | 11–14 | Danylo Nikolenko | 13:00–17:00 |
| Návrh a plán | 15–19 | Rostyslav Mykytiuk | 17:00–21:00 |
| Záver a diskusia | 20–23 | celý tím | 21:00–22:00 |

*Kликать слайды должен сам докладчик своего блока. Передавать «эстафету» короткой фразой — это создаёт впечатление командной работы (за это идут баллы).*

---

## SLAJD 1 — Titulný slajd (Matvii, ~0:30)

Dobrý deň, volám sa Matvii Nosenko a spolu s kolegami Volodymyrom Nedoluhom, Danylom Nikolennom a Rostyslavom Mykytiukom vám budeme prezentovať náš projekt **FAKERADAR** — detekciu falošných online recenzií na základe jazykových a behaviorálnych príznakov. Projekt vypracúvame v predmete Metódy inžinierskej práce na FIIT STU pod vedením pana Ing. Kapustíka. Po prezentácii bude približne 20-minútová diskusia, na ktorú sa pripravili otázky — budeme sa tešiť na vaše názory.

*Не читать всё с экрана — только приветствие, название проекта и анонс дискуссии. Пауза, кивок, дальше.*

---

## SLAJD 2 — Motivácia (Matvii, ~1:00)

Poďme na samotný problém. Online recenzie dnes výrazne ovplyvňujú, čo ľudia kupujú — a presne preto sú atraktívnym terčom manipulácie. Firmy si objednávajú falošné pozitívne hodnotenia, konkurencia si platí negatívne recenzie na rivalov. Štúdia Lucu a Zervasa na dátach Yelpu ukázala, že podniky s horšou reputáciou objednávajú falošné recenzie častejšie — teda je to systematické, nie náhodné správanie.

Druhý posun, ktorý nás motiva­uje, priniesli veľké jazykové modely: napísať plynulú, presvedčivú recenziu dnes stojí takmer nič. Tradičné detektory založené na povrchových jazykových znakoch preto strácajú spoľahlivosť.

Naša odpoveď je **hybridný prístup**: spojiť jazykové príznaky — čo je v texte — s behaviorálnymi — ako a kedy recenzia vznikla — a výsledok spraviť vysvetliteľným pre moderátora platformy.

*Указать рукой на блок «Cieľ projektu» в нижней части слайда, когда произносится последний абзац. Клик — следующий слайд.*

---

## SLAJD 3 — Prehľad (Matvii, ~0:30)

Stručne, ako bude prezentácia vyzerať. Najprv si stanovíme výskumné otázky a ciele projektu. Potom prejdeme súčasný stav v oblasti — jazykové, behaviorálne aj grafové príznaky. V tretej časti prístupy porovnáme, vrátane kvantitatívneho vyhodnotenia. A nakoniec predstavíme náš navrhovaný prístup FAKERADAR a plán prác. Presentovať budeme po častiach — ja úvod, Volodymyr stav poznania, Danylo porovnanie a Rostyslav návrh a plán.

*Быстро провести рукой по пунктам оглавления. Не задерживаться дольше 30 секунд.*

---

## SLAJD 4 — [prechod] Úvod a ciele (Matvii, ~5 sekúnd)

Ešte raz: začneme úvodom a cieľmi.

---

## SLAJD 5 — Výskumné otázky a ciele (Matvii, ~2:00)

Náš prehľadový článok, aj tento projekt, sa držia štyroch výskumných otázok.

**RQ1:** ktoré jazykové príznaky sú spojené s falošnými recenziami — teda čo je v samotnom texte podozrivé. **RQ2:** ktoré behaviorálne a grafové príznaky zachytávajú koordinované podvody — teda správanie recenzentov a vzťahy medzi nimi. **RQ3:** ako tieto dve skupiny kombinovať — existuje early fusion na úrovni príznakov a late fusion na úrovni rozhodnutí. A **RQ4:** ktoré problémy zostávajú otvorené v ére generatívnych modelov.

Z toho vyplývajú tri ciele projektu. Po prvé, vytvoriť prvú dvojjazyčnú — slovensko-anglickú — anotovanú dátovú sadu recenzií. Po druhé, systematicky porovnať jazykové a behaviorálne príznaky v podmienkach, keď texty generuje LLM. A po tretie, postaviť hybridný detektor, ktorého výstupy bude moderátor vedieť obhájiť — vysvetliteľnosť nie je doplnok, ale cieľ.

Metodologicky sme sa pri spracovaní témy nechali usmerniť prehľadovou prácou Crawforda a kol. z roku 2015 a za zakladajúcu prácu oblasti považujeme Jindala a Liua z roku 2008.

*Четыре RQ — по одному жесту пальцем. На «vysvetliteľnosť nie je doplnok» слегка ударить голосом — это тезис всего проекта. Передать слово: «A teraz predám slovo Volodymyrovi, ktorý vám predstaví súčasný stav v oblasti». Клик.*

---

## SLAJD 6 — [prechod] Súčasný stav (Volodymyr, ~5 sekúnd)

Ďakujem, Matvii. Ja sa pozrieme na to, čo o detekcii falošných recenzií už vieme.

---

## SLAJD 7 — Taxonómia a súvisiace práce (Volodymyr, ~2:00)

Celá oblasť sa začala prácou Jindala a Liua z roku 2008. Oni ako prví recenzný spam systematicky kategorizovali — rozlíšili nepravdivé recenzie, recenzie, ktoré propagujú len značku, a recenzie, ktoré vôbec nehovoria o produkte.

Ďalší míľnik je Ott a kol. 2011: vytvorili prvý štandardizovaný dataset klamlivých recenzií a ukázali, že jednoduché n-gramy prekonajú ľudských posudzovateľov. Zároveň ale upozornili na riziko — klasifikátor sa môže naučiť idiosynkrázie konkrétnych autorov, nie podvod ako taký.

Mukherjee a kol. 2013 prišli s dôležitým zistením: behaviorálne príznaky môžu byť informatívnejšie než samotný text. A s tým súvisí aj línia prác o koordinovaných skupinách — Mukherjee 2012 odhaľoval falošné recenzentské skupiny podľa spoločného správania, a Rayana s Akoglou spojili recenzie, recenzentov a produkty do jednej siete a podozrenie v nej šírili.

Prehľady Crawforda a Heydariho zjednotili terminológiu a Li a kol. ukázali, že existujú relatívne univerzálne, ľudsky interpretovateľné pravidlá. Praktický rozmer potvrdil Barbado na doméne spotrebnej elektroniky.

*Abeitenый пересказ каждой работы не нужен — важна «цепочка»: классификация → первый датасет → поведение → сети → обзоры. Затрачено ~2 минуты, к следующему слайду.*

---

## SLAJD 8 — Jazykové príznaky (Volodymyr, ~2:00)

Jazykové príznaky vychádzajú z predpokladu, že vymyslený text sa píše inak než skutočná skúsenosť. Štyri skupiny.

Po prvé, **lexikálna bohatosť** — Type-Token Ratio, dĺžka slova, slovná zásoba. Falošné recenzie majú typicky nižšiu lexikálnu rozmanitosť, ale výsledok je citlivý na dĺžku textu, preto sa TTR musí normalizovať.

Po druhé, **syntax a slovné druhy** — Ott ukázal, že klamlivé recenzie obsahujú pomerne viac slovies, prísloviek a zámen, kým pravdivé viac podstatných mien a predložiek. Logicky: vymyslený opis je abstraktný, skutočná skúsenosť je konkrétna.

Po tretie, **sémantika a sentiment** — extrémne hodnotenia s málo overiteľnými detailmi sú rizikovejšie.

A po štvrte, **neurónové reprezentácie** — jemne doladené transformery ako BERT zachytia kontextové vzory, ktoré n-gramy nevidia; pri generovaných textoch dopĺňame perplexitu.

Zhrnime: jazykové príznaky sú lacné, fungujú aj úplne pri novom recenzentovi a sú interpretovateľné. Ale sú závislé od jazyka a domény, a hlavne — pri LLM-generovaných textoch sa detektor učí vlastnosti konkrétneho modelu, nie podvod. To je ich hlavná slabina.

*Последний абзац — ключевое резюме, сказать медленнее. Клик.*

---

## SLAJD 9 — Behaviorálne a grafové príznaky (Volodymyr, ~2:00)

Behaviorálne príznaky sledujú správanie v čase — a to podvodník napodobňuje oveľa ťažšie. Na úrovni recenzenta nás zaujíma vek účtu, pomer recenzií k nákupom, podiel extrémnych hodnotení. Na úrovni recenzie a produktu duplicitný text, odchýlka od priemeru produktu a náhle zmeny ratingu. Osobitná skupina sú **časové** príznaky — burstiness, periodicita a synchronizácia viacerých účtov: kampane sa typicky púšťajú dávkovo, nie plynulo.

A napokon **graf**: recenzenti a produkty sú bipartitný graf, ko-recenzné skupiny a šírenie podozrenia medzi prepojenými entitami — presne tak odhalíme kampaň, ktorá je na úrovni jednej jedinej recenzie neviditeľná.

Dôveryhodnosť recenzenta modelujeme exponenciálnym vyhladzovaním — rovnička dole: nový signál autentickosti φ posúva odhad T o míru α. Je to jednoduché, interpretovateľné a dá sa to aktualizovať priebežne, bez prepočítavania celej histórie.

Treba povedať aj obmedzenia: **studený štart** — nový recenzent nemá históriu — a dostupnosť dát, lebo správanie používateľov podlieha GDPR.

*Rovničku ukázat указкой, но не выписывать весь вывод — только идею «новый сигнал сдвигает оценку». Клик.*

---

## SLAJD 10 — Diagramy (Volodymyr, ~1:00)

Aby sme mali celý proces jasne, nakreslili sme dva diagramy v nástroji UMLet — zdrojové súbory sú súčasťou odovzdávky.

Vľavo je **proces detekcie**: recenzia príde, extrahujú sa z nej jazykové aj behaviorálne príznaky, klasifikátor ich spojí, a na výstupe je nielen verdikt, ale aj vysvetlenie pre moderátora.

Vpravo je **architektúra extraktora príznakov** — vidíte oddelené triedy pre textové a behaviorálne príznaky, ktoré sa neskôr fúzujú. Táto modularita je dôležitá: keď príde nový typ podvodu, vymeníme alebo doplníme jeden modul, nie celý systém.

*Показать сначала левый, потом правый диаграм. Смысловой акцент: «modularita — меняем модуль, а не систему». Затем передать слово: „Porovnanie prístupov predstaví Danylo“. Клик.*

---

## SLAJD 11 — [prechod] Porovnanie prístupov (Danylo, ~5 sekúnd)

Ďakujem, Volodymyr. Ja si vezmem porovnanie prístupov — čo kombinovať, čoho sa báť a ako to vyhodnotiť.

---

## SLAJD 12 — Hybridné prístupy a výzva LLM (Danylo, ~1:30)

Skupiny príznakov sa kombinujú dvoma spôsobmi. **Early fusion** — spájame príznaky skôr a klasifikátor sa učí na spoločnej reprezentácii. **Late fusion** — každý model rozhodne sám a spájame ich rozhodnutia. V praxi fungujú dobre gradientové boosting stromy, ansámble a grafové neurónové siete, ktoré prirodzene spracúvajú vzťahy medzi entitami.

Silu grafov som už naznačil: podozrenie sa šíri na susedov, takže odhalíme kampane, ktoré by jednotlivá recenzia nikdy neprezradila.

Keďže je systém nasadzovaný v praxi, **vysvetliteľnosť** považujeme za rovnocenný cieľ: moderátor musí vedieť, PREČO bola recenzia označená — inak obhájiť rozhodnutie nevie a poškodí legitímnych používateľov. Preto hodnotíme SHAP atribúcie, pozornosť modelu a protifaktuálne vysvetlenia.

A výzva číslo jedna: recenzie generované LLM sú plynulé a štylisticky konzistentné — lexikálna detekcia teda stráca pôdu. Behaviorálne signály zostávajú, ale aj tie sa dajú obísť farmami účtov. Evaluácia preto musí bežať na časovo oddelených dátach a sledovať F1, AUROC a falošné pozitíva pri fixnom zachytení.

*Абзац про LLM — это мост к таблице на следующем слайде, интонировать как «постановку задачи».*

---

## SLAJD 13 — Tabuľka: Porovnanie skupín prístupov (Danylo, ~1:30)

Táto tabuľka zhrňuje päť skupín prístupov — prejdime ju po riadkoch.

Jazykový prístup: lacný, dostupný, interpretovateľný — ale závislý od jazyka a domény a pri LLM zlyháva. Behaviorálny: odolný voči štylistickým úpravám, zachytáva koordináciu — ale trpí studeným štartom a GDPR obmedzeniami. Grafový: najlepší na skupiny a kampane — ale náročný na dáta a výpočet a ťažšie vysvetliteľný. Hybridný spája výhody všetkých — za cenu zložitosti a rizika preučenia. A LLM-orientovaný reaguje na novú hrozbu, ale modely sa menia každý rok, takže generalizácia je neistá.

Pointa tabuľky: **žiadna skupina sama o sebe nestačí**. Toto je presne ten dôvod, prečo náš projekt je hybridný — a v ďalšom slajde to aj kvantifikujeme.

*По таблице вести рукой построчно, не читать каждую ячейку. Последняя фраза — переход к слайду 14. Клик.*

---

## SLAJD 14 — Vážené vyhodnotenie (tabuľka z Excelu) (Danylo, ~1:30)

Aby sme výber riešenia podložili číslom, urobili sme multikritériálne vyhodnotenie. Šesť kritérií, každému sme priradili váhu podľa dôležitosti pre náš projekt — váhy stejnú jednotku, čo kontroluje vzorec v súbore. Každý prístup dostal skóre 1 až 5 na základe literatúry z prehľadového článku.

Vážené skóre počíta funkcia SUMPRODUCT — súčin váh a skóre. Výsledky: jazykový prístup 3,0, behaviorálny 3,25, grafový 3,05 a **hybridný 4,20** — najvyššie. Všimnite si, že hybrid nevyhráva v každom kritériu — napríklad v interpretovateľnosti či dostupnosti dát je lepší čistý jazykový prístup. Vyhráva v súčte, lebo nemá žiadnu kritickú slabinu.

Tabuľka je spracovaná v LibreOffice Calci, súbory so vzorcami odovzdávame spolu s prezentáciou — váhy aj skóre možno meniť a výsledok sa prepočíta, takže môžete diskutovať o citlivosti výberu.

*Слайд с формулой SUMPRODUCT — упомянуть, что файл будет приложен (требование задания). Если спросят о чувствительности к весам: «мы тестировали и другие веса, порядок лидеров сохраняется». Если спросят, почему нет отдельного столбца «LLM-подход»: он не отдельная группа признаков, а учтён критерием «Odolnosť voči LLM-generovaným textom». Клик, передать слово: „Návrh prístupu a plán predstaví Rostyslav“.*

---

## SLAJD 15 — [prechod] Navrhovaný prístup a plán (Rostyslav, ~5 sekúnd)

Ďakujem, Danylo. Na záver ukážem, ako presne by FAKERADAR mal fungovať a čo je náš plán.

---

## SLAJD 16 — FAKERADAR: modulárny hybridný detektor (Rostyslav, ~1:30)

Náš prístup má štyri vrstvy.

Prvá vrstva je **zber a anotácia dát** — bez kvalitných dát nemá žiadny model zmysel; vrátane kontroly medzanotátorskej zhody. Druhá vrstva je **extrakcia príznakov**: textová strana — TTR, slovné druhy, sentiment, perplexita — a behaviorálna strana — vek účtu, burstiness, graf recenzent–produkt. Architektúru extraktora vidíte na diagrame vpravo — je modulárna presne preto, aby bolo možné príznaky pridávať a odoberať.

Tretia vrstva je **hybridný klasifikátor** — early alebo late fusion doplnený o grafové príznaky. A štvrtá vrstva je **vysvetlenie pre moderátora** — atribúcie príznakov, ktoré povedzú, KTORÉ signály rozhodli.

*Dержать ритм: одна фраза на слой, рука показывает на диаграм при второй и четвёртой.*

---

## SLAJD 17 — Merateľné ciele a ukazovatele (Rostyslav, ~1:30)

Ciele projektu sme si dali **merateľné**.

Dátová sada: 15-tisíc anotovaných recenzií v slovenčine a angličtine, so zhodou anotátorov kappa aspoň 0,7 — podľa klasifikácie Landisa a Kocha ide o „dobrú“ zhodu.

Presnosť v rámci domény: jazykový model F1 aspoň 0,80, behaviorálny a grafový aspoň 0,75 a hybridný aspoň 0,85 — a hybridný má prekonať samostatné modely v porovnateľnom teste. Pri prenose na novú doménu cieľ 0,75, pričom testy bežia aj na časovo oddelených dátach, aby sme zachytili posun distribúcie.

Pilotné nasadenie plánujeme s partnerskou platformou; ak prístup nezískame, urobíme offline test na dostupných dátach. Latenciu API budeme merať a limit stanovíme po dohode s potenciálnym používateľom.

A jedno dôležité upresnenie — tieto čísla sú **plánovacie ciele, nie namerané výsledky**. Kalibrujeme ich po baseline experimentoch.

*Честная оговорка в конце («не namerané výsledky») — звучит зрело, не пропускать её, она защищает вас на дискуссии.*

---

## SLAJD 18 — Plán prác a rozdelenie v tíme (Rostyslav, ~1:00)

Plán máme rozdelený do siedmich pracovných balíkov, ktoré sa čiastočne prekrývajú — manažment (WP1) a diseminácia (WP7) bežia počas celého projektu, ostatné na seba nadväzujú. Zodpovednosť kopíruje naše špecializácie: Matvii vedie jazykové modely a manažment, Volodymyr zber dát a behaviorálno-grafové modely, Danylo hybridný model, ja pilot a disemináciu. Detailná kapacitná tabuľka po hodinách je v Exceli, medzisúčty po riešiteľoch počítajú vzorce.

Pracujeme iteračne a inkrementálne — dva týždňové šprinty v Jire, každá zmena cez revíziu v Gite. Takto sme pracovali aj pri príprave tejto prezentácie.

*Этот слайд — прямое доказательство «aktivna účast celého tímu». Названия всех произносить с именами, глядя на коллег.*

---

## SLAJD 19 — Zhodnotenie a ďalšia práca (Rostyslav, ~0:45)

Zhŕňajúc: jazykové príznaky sú lacnou prvotnou filtráciou, behaviorálne a grafové odhaľujú koordinované kampane a sú odolnejšie voči štylistickým úpravam. V ére LLM sa ťažisko presúva k hybridným riešeniam s vysvetliteľnými výstupmi — presne taký systém navrhujeme.

Otvorené ostávajú štyri problémy: nedostatok slovenských a českých dát, studený štart, posun distribúcie a adversariálne prispôsobovanie. Na všetky štyri nadväzuje náš ďalší výskum.

---

## SLAJD 20 — Otázky na diskusiu (celý tím, ~1:00 + diskusia)

Na záver štyri otázky, ktoré chceme otvoriť diskusiu.

Prvá — a podľa nás najdôležitejšia: má zmysel AI-generované recenzie **zakázať**, alebo ich iba transparentne **označovať**? Druhá: čo preferuje moderátor — vyššiu presnosť modelu alebo lepšiu vysvetliteľnosť rozhodnutia? Tretia: ako zachytiť podvod pri studenom štarte, keď recenzent nemá žiadnu históriu? A štvrtá: sú behaviorálne príznaky udržateľné vzhľadom na GDPR?

**Ďakujeme za pozornosť, tešíme sa na diskusiu.**

*Каждый берёт на себя одну из четырёх вопросов как «ведущий» обсуждения: Носенко — GDPR, Недолуха — cold start, Николенко — запрет/маркировка, Микиюк — точность vs объяснимость. Подготовить по 2 аргумента «за и против» на свою тему (см. README).*

---

## SLAJDY 21–23 — Zdroje (nezobrazovať dlho)

Pri zdrojoch zostať max. 10 sekúnd — „Plný zoznam zdrojov je tu, radi súdneme k akejkoľvek práci.“ Väčšina diskusie bude aj tak okolo týchto prác.

---

## Частые вопросы из зала и готовые ответы (Q&A cheat sheet)

**Q: Na akých dátach trénujete, keď sa slovenské dáta ťažko získavajú?**
A: Baseline na verejných anglických datasetoch (Ott 2011, Yelp); slovensko-anglická sada sa anotuje v WP2, pôvodne s menším pilotným rozsahom.

**Q: Ako rozlíšite negatívnu pravdivú recenziu od falošnej negatívnej?**
A: Nie podľa polarity, ale podľa zhody s faktskými znakmi — overiteľné detaily, korešpondencia s objednávkou, behaviorálny kontext.

**Q: Neprekváši GDPR behaviorálne príznaky úplne?**
A: Pracujeme s agregovanými a anonymizovanými dátami, verejnými datasetmi a partnerskou spoluprácou; nepotrebujeme identitu, len vzory správania.

**Q: Čo keď LLM začne imitovať aj behaviorálne vzory (pomaly publishing, pestré účty)?**
A: Ide o arm race — preto adaptívne učenie a adversariálne testovanie sú súčasťou evaluácie (WP6).

**Q: Prečo SUMPRODUCT tabuľka a nie strojové porovnanie?**
A: Ide o plánovacie vyhodnotenie pred experimentmi; po baselines sa váhy prekalibrujú — to je presne úloha WP3.
