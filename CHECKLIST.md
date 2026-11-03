# Чек-лист сдачи сегодня — Predbežná verzia MIP

Первая часть проекта получила **4,9/5**. Поэтому не переписывать одобренные название, аннотацию и основную идею и не перестраивать проект с нуля. Цель сейчас — устранить несколько конкретных несостыковок, проверить сборку и отправить полный комплект.

## Сделать до отправки — статус

- [x] **Связать заявку с одобренным замыслом.** `vv-f.tex`, раздел 1.1: добавлено, что ядро проекта — сравнение языковых и поведенческих признаков, а графовые признаки, объяснимость и LLM — расширения. Название и аннотация не менялись.
- [x] **Терминология в статье.** `clanok.tex`: «falošne pozitívny / falošne negatívny» заменено на «propagácia vlastnej ponuky, poškodenie konkurencie». **Поправка к прошлой версии пункта:** это не ошибки классификатора, а категории намерения автора, и термины были корректны. Менять пришлось только из-за неоднозначности формулировки.
- [x] **Структура VV-F.** Таблица контрольных точек стоит под заголовком `3.2 Harmonogram a míľniky` (проверено по PDF: 3.2 → таблица → 3.3). Причина была в плавающем `[h!]`; таблица переведена в нефлотирующий `center`.
- [x] **Ответственные за рабочие пакеты.** Утверждение «каждый пакет имеет ответственного» заменено на «ответственность распределится по специализации (bod 1.7) и будет уточнена при старте». Имена никто не назначал.
- [x] **Компиляция.** `clanok.tex` и `vv-f.tex` собраны без ошибок, `undefined` и `??` нет, пустых страниц нет. `ziadost_VV-A-E.tex` не менялся, PDF актуален.
- [ ] **Проверка в AIS.** Не выполнена: доступа к системе у меня нет. Нужно сделать вручную после загрузки.

## Раунд 2 — исправления по оценке (студенческий учебный проект)

Контекст: это учебный проект для закрытия MIP (ECTS), а не реальный грант. Поэтому не нужно добиваться официальной достоверности реквизитов и бюджета, но нельзя оставлять неправдоподобные цифры и служебные пометки.

- [x] **Бюджет.** Зарплаты пересчитаны: 140 000 € → 51 600 € (PI 22 €/h, студенты 10 €/h). Общий бюджет 300 000 € → 86 160 €, софинансирование убрано (0 €). Обновлены `projekt-data.tex` (макросы), `ziadost_VV-A-E.tex` (VV-A1, VV-C, footnote), `vv-f.tex` (3.5).
- [x] **Реквизиты.** IČO, DIČ и IČ DPH заменены на «(doplní sa)» — ранее они были подставлены без проверки. Комментарий о «подтверждённом» e-mail убран.
- [x] **Служебные пометки.** Удалены ссылки на «cvičiaceho» и «vyjadrenia Ing. Kapustíka» из текста заявки и VV-F.
- [x] **RQ1–RQ4 в статье.** В заключении (`clanok.tex`) добавлен явный ответ на каждый вопрос.
- [x] **Компиляция.** Все три документа собраны без ошибок, `??` и пустых страниц нет. Страницы: статья 7, VV-F 8, заявка 9.
- [ ] **Проверка в AIS** — вручную после загрузки.
- [x] **Ответы Ing. Kapustíka на вопросы по VV-A3, VV-A4, VV-F** учтены: в VV-A4 пункт 07 — любые проекты, предпочтительно ведённые; поля 08/09 в форме отсутствуют (как и разрешено); VV-A3 — студенты Bc., дата рождения обязательна, ориентир 100 ч/год на студента; VV-F 1.6 — выбор по значимости, проекты любого типа.
- [ ] **Согласие руководителя (PI)** — ответ на письмо получен, но явного подтверждения роли PI в нём нет. Лучше попросить письменное подтверждение.

## Если останется время

- [ ] Увеличить диаграммы статьи или упростить подпись второй диаграммы: сейчас детали мелкие и плохо читаются. Не тратить на это время, если правка рискует сломать сборку.
- [ ] Заполнить отсутствующие сведения о PI и участниках только если они доступны и подтверждены. Если нет — оставить заметные пометки «будет дополнено» / «модельные данные»; **не придумывать** даты рождения, публикации, проекты, согласие PI или бюджетные данные.
- [ ] Если `zameranie.tex/.pdf` всё-таки придётся повторно сдавать, исправить в нём упоминание оценки с 5/5 на фактические 4,9/5. Если первая часть уже принята и повторная сдача не требуется — этот файл не трогать.
- [ ] Ещё раз проверить, что цель 15 000 отзывов, F1, κ, TRL, бюджет и партнёрский пилот обозначены как предварительные проектные допущения, а не как уже полученные результаты или требования MIP/APVV.

## Не переделывать сегодня

- Не менять одобренное название и аннотацию проекта.
- Не переписывать статью и заявку с нуля и не добавлять новые крупные обещания.
- Не менять арифметически согласованный бюджет только ради косметики.
- Не добавлять непроверенные источники, факты о команде или обещание доступности данных.

## Файлы для сдачи

- [ ] `ziadost_VV-A-E.tex` + `ziadost_VV-A-E.pdf` + `projekt-data.tex`
- [ ] `vv-f.tex` + `vv-f.pdf` + `projekt-data.tex` + `literatura.bib`
- [ ] `clanok.tex` + `clanok.pdf` + `literatura.bib` + исходники диаграмм `img/diagram1.uxf`, `img/diagram2.uxf` и используемые экспорты `.pdf`; приложить прочие исходники изображений, если они нужны для воспроизводимости.
- [ ] `zameranie.tex/.pdf` повторно прикладывать только если для него есть отдельное место в AIS или это отдельно попросили: первая часть уже оценена на **4,9/5**.

---

# CHECKLIST — Predbežná verzia projektu (MIP)

Deadline: **01.11.2026 23:59**, odovzdanie do AIS.

## Čo vyžaduje stránka MIP (#predb)

- [x] Predbežná verzia má približne 50–60 % finálneho rozsahu; v tejto fáze je dovolené nerovnomerné rozpracovanie, ale musí byť zrejmá idea a niektoré merateľné ciele.
- [x] Projekt má nadväzovať na schválené zameranie a úpravy vyučujúceho: slovenský názov a anotácia prevzaté z odovzdanej práce (tím uvádza 4,9/5).
- [x] VV-A–VV-E: LaTeX + PDF; VV-F: LaTeX + PDF.
- [x] Prehľadový článok: LaTeX + PDF, min. 4 strany; primary source + aspoň 7 súvisiacich zdrojov v texte cez BibTeX.
- [x] Obrázky článku: zdrojové formáty a export vložený do článku; tabuľka vytvorená priamo v LaTeXu.

Stránka **neurčuje** konkrétny rozpočet, TRL, veľkosť datasetu, F1, kappu, počet hodín, začiatok projektu ani míľniky. To sú návrhové hodnoty projektu — nesmú sa prezentovať ako povinné čísla z webu alebo APVV.

## Kontrola PDF (po poslednej kompilácii)

| Súbor | Strany | Stav |
|---|---:|---|
| `clanok.pdf` | 7 | 0 undefined, 0 `??`; 2 overfull hbox (≈12 pt, абзац про таксономию) — ранее ошибочно записано «0 overfull» |
| `ziadost_VV-A-E.pdf` | 9 | 0 overfull, 0 undefined, 0 `??` |
| `vv-f.pdf` | 8 | 0 undefined, 0 `??`; пересобран после правок (раздел 1.1, 3.1–3.2) |
| `zameranie.pdf` | 1 | 0 overfull, 0 undefined, 0 `??` |

Článok má 13 citovaných zdrojov. Landis & Koch (1977), pridaný na vysvetlenie cieľa kappa vo VV-F, je citovaný vo VV-F; nie je citáciou v článku. V BibTeX nie sú chýbajúce kľúče.

## Pôvod a význam čísel v návrhu

| Číslo/údaj | Pôvod | Ako ho interpretovať |
|---|---|---|
| 01.11.2026 | Termín predbežnej verzie na webe | Dátum podania uvedený v modelovej forme |
| 01/2027–12/2029; 36 mesiacov | Pracovný návrh tímu | Nie je to termín predpísaný webom; z neho sú odvodené M6–M36 |
| M6, M12, M18, M24, M30, M36 | Míľniky po 6 mesiacoch od navrhnutého začiatku 01/2027 | Pracovný harmonogram; dátumy sú v tabuľke odvodené od mesiaca začiatku |
| 15 000 recenzií | Návrhový cieľ tímu, nie externá požiadavka | Orientačne 7 500 SK + 7 500 EN; navrhnutý split 70/15/15 = 10 500/2 250/2 250. Treba upraviť podľa dostupnosti a tried |
| κ ≥ 0,7 | Návrhový prah zhody anotátorov; Landis & Koch 1977 uvádza 0,61–0,80 ako „substantial agreement“ | Interpretácia závisí od dát/domény; nie je to pravidlo MIP/APVV |
| F1: 0,80 jazykový; 0,75 behaviorálny/grafový; 0,85 hybridný; 0,75 cross-domain | Počiatočné akceptačné ciele zvolené pre návrh | Nie sú výsledkom merania. Baseline sa stanoví v M6 a ciele sa potom zdôvodnene potvrdia alebo upravia |
| TRL 3→6 | Predbežné zaradenie projektu | Návrh, treba potvrdiť podľa skutočnej východiskovej zrelosti a definícií TRL |
| €86 160 celkom, bez spolufinancovania | Modelový výpočet pre študentský projekt v MIP (nie reálny grant) | Mzdy: PI 600 h/rok × 22 €/h + 4 študenti × 100 h/rok × 10 €/h = 17 200 €/rok; odvody 35 %; ostatné položky sú odhady |
| €51 600 mzdy, €18 060 odvody a ostatné položky | Rozdelenie modelu (3 roky po 28 720 €) | Sadzby sú modelové, nie tarify FIIT |
| 600 h/rok PI; 300 h/rok podpora | Naše modelové odhady | Nie sú potvrdené Kapustíkom ani FIIT |
| približne 100 h/rok na študenta | Odpoveď Ing. Kapustíka: „asi 100 hodín na rok“ | Orientačný limit podľa cvičiaceho, nie oficiálna norma stránky MIP |
| 1 300 h/rok spolu | Aritmetika modelu: PI 600 + 4×100 študentov + 300 podpora | 1 000 h riešiteľov + 300 h modelovej podpory; nie je mzdový výpočet |
| 4/5 = 80 % | Štyria študenti z piatich uvedených riešiteľov | Je to podiel študentov v tíme, **nie potvrdený podiel mladých pracovníkov**; vek treba overiť |
| 2 odborné publikácie + 1 správa | Návrhový výstup tímu do M36 | Aspirácia, nie garancia ani požiadavka stránky |

## Čo bolo zosúladené / opravené

- [x] Odstránený nepodložený limit API 200 ms; namiesto toho sa latencia meria a cieľ sa dohodne s používateľom.
- [x] Pilot 1–2 platforiem zmenený na partnerský pilot, ak bude prístup; inak offline test na dostupných dátach.
- [x] Opravený rozpor: v VV-F sú študenti 1. stupňa (Bc.), nie 2. stupňa.
- [x] Podiel 80 % už nie je vydávaný za vekovo potvrdený podiel mladých pracovníkov.
- [x] TRL, rozpočet, KPI a harmonogram označené ako návrhové predpoklady, nie čísla zo stránky MIP/APVV.
- [x] Rozpočet aritmeticky sedí: ročné sumy 28 720 × 3 = 86 160 EUR; bez spolufinancovania (0 EUR); rovnaké čísla vo VV-A1, VV-C a VV-F (3.5), sú zadané cez makrá v `projekt-data.tex`.
- [x] V článku odstránený nepodložený 200 ms API target; F1/dataset ciele opisované ako predbežné.

## Údaje, ktoré naozaj ešte chýbajú

- [ ] Dátumy narodenia riešiteľov — vo VV-A3 označené `(doplní sa)`; veková kategória „mladý pracovník“ sa nedá potvrdiť bez nich.
- [ ] Telefón PI, projekty viedol, a jeho najvýznamnejšie výstupy (VV-A4/VV-F) — tabuľky sú zástupné podľa odpovede cvičiaceho.
- [ ] Potvrdenie súhlasu Ing. Kapustíka byť PI (zatiaľ je uvedený podľa rozhodnutia študenta).
- [ ] Akronym FAKERADAR a anglický názov — návrhy, lebo v schválenom zameraní chýbali.
- [ ] Reálne trvanie, TRL, rozpočet, KPI a pilotné možnosti — tím/cvičiaci má potvrdiť alebo ponechať ako návrhy v predbežnej verzii.

## Čo odovzdať do AIS

- [ ] `ziadost_VV-A-E.tex` + `.pdf` + `projekt-data.tex` (zdieľaná závislosť)
- [ ] `vv-f.tex` + `.pdf` + `projekt-data.tex` + `literatura.bib`
- [ ] `clanok.tex` + `.pdf` + `literatura.bib` + `img/diagram1.uxf/.pdf` + `img/diagram2.uxf/.pdf` + `img/STU-FIIT-nfv.pdf`
- [ ] `zameranie.tex/.pdf` patrí k samostatnému odovzdaniu z 04.10; opätovne odovzdať len ak má AIS preň samostatné miesto alebo to výslovne žiada
- [ ] Nahratie a úspešné prijatie súborov skontrolovať priamo v AIS
