# Cvičenie 5 — Jira, Scrum a integrácia Jira ↔ GitHub

Практическое задание: <https://www2.fiit.stuba.sk/~lang/mip/cvicenia/c05.html>
Требования к проекту: <https://www2.fiit.stuba.sk/~lang/mip/projekt/index.html>

Этот файл — рабочий план для Cvičenia 5. Он закрывает репозиторную часть
(5.13, 5.17, 5.18) и даёт пошаговый сценарий для ручных действий в Jira
(5.1–5.12, 5.14–5.16, 5.19). Всё, что делается руками, помечено **[РУЧНО]**.

Команда (4 человека): Matvii Nosenko, Volodymyr Nedoluha, Danylo Nikolenko, Rostyslav Mykytiuk.

Предлагаемый ключ проекта Jira: **`FAKERADAR`** (≤ 10 заглавных букв, выводится из акронима
проекта `\projectAcronym` = FAKERADAR в `projekt-data.tex`).
Тогда issue keys будут вида `FAKERADAR-1`, `FAKERADAR-2`, … Если при создании сайта
ключ будет другим (например, `FR` или `FKR`) — просто замените его в примерах ниже.

---

## A. Ручная настройка Jira (5.1–5.12, 5.14–5.15, 5.19)

> Всё в этом разделе делается в браузере на <https://www.atlassian.com/software/jira/free>.
> Из репозитория это сделать нельзя.

1. **[РУЧНО] 5.1** Зарегистрироваться на Jira Free (Atlassian Cloud).
2. **[РУЧНО] 5.2** Создать сайт `<nieco>.atlassian.net` с названием по теме проекта
   (предложение: `fakeradar`). Имя должно быть свободным.
3. **[РУЧНО] 5.3** Выбрать шаблон **Scrum** (Software development → Scrum).
4. **[РУЧНО] 5.4** Переименовать дефолтный «SCRUM Sprint 1» → **«Cvičenie č. 4»**.
5. **[РУЧНО] 5.5** Создать issue типа **Task**, текст взять из списка задач Cvičenia č. 4
   (см. раздел C, спринт «Cvičenie č. 4»).
6. **[РУЧНО] 5.6** В свойствах задачи назначить **Assignee** = себя.
7. **[РУЧНО] 5.7** Добавить в спринт «Cvičenie č. 4» все задачи Cvičenia č. 4.
8. **[РУЧНО] 5.8** Задать длительность спринта = одна неделя по календарю и **Start sprint**.
9. **[РУЧНО] 5.9** Через **Board** провести задачи по колонкам Todo → In progress → **Done**
   (цель — все задачи Cvičenia č. 4 в Done).
10. **[РУЧНО] 5.10** Создать новый спринт **«Cvičenie č. 5»** и завести в нём все задачи
    Cvičenia č. 5 как `issue type = Task` (см. раздел C).
11. **[РУЧНО] 5.11** Общий GitHub-репозиторий уже есть: `git@github.com:Quality15/mipko.git`.
    Убедиться, что у всех 4 участников есть локальная копия
    (`git clone git@github.com:Quality15/mipko.git`).
12. **[РУЧНО] 5.12** Общая Jira-страница (Scrum) — результат шагов 5.1–5.3.
13. **[РУЧНО] 5.13** В backlog завести задачи по работе над проектом и обзорной статьёй —
    готовый список в разделе B.
14. **[РУЧНО] 5.14** Создать спринт **`sprint_1_tyzden_5`**.
15. **[РУЧНО] 5.15** Перенести в него задачи только по рабочей версии проекта
    (раздел C, «sprint_1_tyzden_5»), проставить **Story points** и ответственных, **Start sprint**.
16. **[РУЧНО] 5.16** Продолжать работу над проектом и статьёй (коммиты — раздел D).
17. **[РУЧНО] 5.19** Статус задач параллельно отражать на **Board**.

> Включите GitHub-интеграцию в Jira (нужно для Cvičenia 6, но удобно сразу):
> Project settings → Integrations → GitHub, авторизовать и выбрать репозиторий
> `Quality15/mipko`. Тогда issue key в commit message автоматически свяжет коммит с задачей.

---

## B. Backlog для 5.13 (по критериям оценки финальной версии)

Источник: раздел 4 «Projekt a jeho súčasti» на странице проекта. Оценка финальной версии:
Excelentnosť / Dopad / Implementácia (VV-A…VV-F) + организация/стилизация/источники статьи,
диаграмма, таблица, ≥ 12 источников через BibTeX.

| # | Issue type | Summary (sk) | Story points | Ответственный |
|---|---|---|---:|---|
| 1 | Task | VV-A–VV-E: dopracovať formuláre žiadosti (pracovná verzia) | 5 | Matvii Nosenko |
| 2 | Task | VV-F: dopracovať vecné zameranie projektu (≤ 15 strán) | 5 | Volodymyr Nedoluha |
| 3 | Task | Článok: rozšíriť na ~7 strán podľa štruktúry | 8 | Danylo Nikolenko |
| 4 | Task | Článok: doplniť ≥ 12 citovaných zdrojov cez BibTeX | 5 | Rostyslav Mykytiuk |
| 5 | Task | Článok: diagram z grafického nástroja (UMLet) | 3 | Rostyslav Mykytiuk |
| 6 | Task | Článok: tabuľka s hodnotami podľa formuly | 3 | Danylo Nikolenko |
| 7 | Task | Článok: organizácia textu, štylizácia, práca so zdrojmi | 5 | Volodymyr Nedoluha |
| 8 | Task | Konzistencia čísel (rozpočet, KPI, harmonogram) vo VV-A…VV-F | 3 | Matvii Nosenko |
| 9 | Task | Prezentácia: beamer ≥ 7 slajdov | 8 | Volodymyr Nedoluha |
| 10 | Task | Prezentácia: diagram z grafického nástroja | 3 | Rostyslav Mykytiuk |
| 11 | Task | Prezentácia: tabuľka s hodnotami podľa formuly | 3 | Danylo Nikolenko |
| 12 | Task | Prezentácia: prednes a nácvik (15–20 min) | 5 | všetci |
| 13 | Task | Diskusný príspevok k 2 prezentovaným projektom | 5 | Matvii Nosenko |
| 14 | Task | Jira ↔ GitHub integrácia a issue keys v commitoch | 3 | Matvii Nosenko |
| 15 | Task | Záverečná kontrola a odovzdanie do AIS | 3 | všetci |

Задачи 1–8 относятся к «рабочей версии проекта» (идут в `sprint_1_tyzden_5`),
9–15 — остальной backlog (презентация/финал, уходят в спринт Cvičenia 6).

---

## C. Спринты и их содержимое

### C.1 Спринт «Cvičenie č. 4» (5.4, 5.5, 5.7–5.9)
Задачи берутся из списка Cvičenia 4 (4.1–4.10):

1. Samostatné commity s výstižnými názvami pre každú úlohu.
2. Druhý diagram v UMLet/UMLetino, dva diagramy vedľa seba.
3. Dočasne prepnúť `clanok.tex` na `twocolumn`.
4. Vložiť obrázok na celú šírku (cez oba stĺpce) — `figure*`.
5. Round-trip Overleaf ↔ lokálne MiKTeX.
6. Round-trip lokálne MiKTeX ↔ Overleaf.
7. Experimenty s vlastnosťami obrázkov (veľkosť, rotácia, pozícia, zarovnanie).
8. Logo FIIT STU v jazyku dokumentu, obtekané textom (`wrapfigure`).
9. Matica ≥ 5×4 a dlhý viacriadkový vzorec; porovnanie s MS Word.
10. Pokračovať v práci na predbežnej verzii projektu a článku.

### C.2 Спринт «Cvičenie č. 5» (5.10)
Задачи 5.1–5.19 из этого плана (A + B + D + E).

### C.3 Спринт `sprint_1_tyzden_5` (5.14, 5.15)
Только задачи по рабочей версии проекта — пункты **1–8** таблицы из раздела B.
Проставить Story points, назначить ответственных, **Start sprint**.

---

## D. Коммиты с issue key (5.17)

Формат сообщения (из c05.html):

```
git commit -m "<Issue key, číslo úlohy> <samotný text správy>"
```

Пример для задачи #3 (issue `FAKERADAR-3`) и номера пункта 5.16:

```
git commit -m "FAKERADAR-3, 5.16 rozsirenie clanku na 7 stran"
```

Готовый помощник: `cv5/commit-task.sh` — сам делает `git add -A` и коммит в нужном формате:

```bash
./cv5/commit-task.sh FAKERADAR-3 5.16 "rozsirenie clanku na 7 stran"
```

Правило: один пункт спринта = один (или несколько) коммитов, и в каждом сообщении
в начале стоит `Issue key, číslo úlohy`.

---

## E. `git_log.txt` (5.18)

В конце работы (перед завершением семинара):

```bash
git log > git_log.txt
git add git_log.txt
git commit -m "FAKERADAR-14, 5.18 export git log"
git push
```

Файл `git_log.txt` уже создан в корне репозитория как снимок текущего состояния.
После коммитов с issue keys его **обязательно перегенерировать** тем же `git log > git_log.txt`,
чтобы он соответствовал реальности.
