# Cvičenie 6 — Jira (pokročilé) a integrácia Jira ↔ GitHub

Zadanie: <https://www2.fiit.stuba.sk/~lang/mip/cvicenia/c06.html>
Nadväzuje na `cv5/JIRA_PLAN.md`.

Команда (4 человека): Matvii Nosenko, Volodymyr Nedoluha, Danylo Nikolenko, Rostyslav Mykytiuk.
Предлагаемый ключ проекта: **`FAKERADAR`** (см. `cv5/JIRA_PLAN.md`). Примеры issue keys
вида `FAKERADAR-16`, … — при другом ключе сайта просто замените.

> Всё, что требует браузера/аккаунта Jira, помечено **[РУЧНО]**.
> Всё, что делается в репозитории, выполнено и помечено `[x]` со ссылкой на файл.

---

## 6.1 Закрытие спринта `sprint_1_tyzden_5` — **[РУЧНО]**

1. Jira → **Board** (проект `FAKERADAR`, Scrum).
2. **Complete Sprint** у спринта `sprint_1_tyzden_5`.
3. Незавершённые задачи (которые не перешли в **Done**) Jira предложит перенести —
   выбрать **`sprint_2_tyzden_6`** (создать его заранее, см. 6.2).

Задачи, которые в sprint 1 оставались незакрытыми (по `cv5/JIRA_PLAN.md`, раздел B,
пункты 1–8 — рабочая версия проекта), автоматически попадают в новый спринт.

## 6.2 Новый спринт `sprint_2_tyzden_6` — **[РУЧНО]**

В Sprint `sprint_2_tyzden_6` переносим из backlog:

- незавершённые задачи по **рабочей версии проекта** (из предыдущего спринта), и
- задачи по **презентации** (ниже), с Story points и ответственными.

Рекомендуемый состав (Story points и ответственные — как в backlog `cv5`):

| # | Issue type | Summary (sk) | Story points | Ответственный |
|---|---|---|---:|---|
| P1 | Task | Prezentácia: beamer ≥ 7 slajdov (iniciálna verzia) | 8 | Volodymyr Nedoluha |
| P2 | Task | Prezentácia: diagram z grafického nástroja (UMLet) | 3 | Rostyslav Mykytiuk |
| P3 | Task | Prezentácia: tabuľka s hodnotami podľa formuly | 3 | Danylo Nikolenko |
| P4 | Task | Prezentácia: prednes a nácvik (15–20 min) | 5 | všetci |
| P5 | Task | Diskusný príspevok k 2 prezentovaným projektom | 5 | Matvii Nosenko |
| P6 | Task | Jira ↔ GitHub integrácia a issue keys v commitoch | 3 | Matvii Nosenko |
| P7 | Task | Záverečná kontrola a odovzdanie do AIS | 3 | všetci |
| R1–R8 | Task | Nedokončené úlohy pracovnej verzie z `sprint_1_tyzden_5` | podľa backlogu | podľa backlogu |

Порядок: выставить **Story point estimate** каждой задаче → назначить **Assignee** →
**Start sprint** (длительность — одна неделя по календарю).

## 6.3 Подключение GitHub-интеграции в Jira — **[РУЧНО]**

По гайду <https://youtu.be/e5yr7nIqTc8> и разделу 5.11:

1. Jira → **Project settings → Integrations → GitHub** (Atlassian Marketplace: «GitHub for Jira»).
2. **Connect** / авторизоваться в GitHub, выбрать **организацию/аккаунт** `Quality15`.
3. Выбрать репозиторий **`Quality15/mipko`** → **Connect**.
4. Проверка: в задаче появляется панель **Development**; после коммита с ключом
   `FAKERADAR-xx` в сообщении коммит автоматически привязывается к задаче.

## 6.4 Привязка коммитов к задачам в отдельной ветке — **[РУЧНО] + репозиторий**

Формат коммита (из c06 / c05):

```
git commit -m "<Issue key, číslo úlohy> <текст сообщения>"
```

- Отдельная ветка для презентации (Cvičenie 6): **`prez-cv6`**.

  ```bash
  git checkout -b prez-cv6
  # ... коммиты с issue keys (см. ниже) ...
  ```

- Для каждой задачи `sprint_2_tyzden_6` в Jira: открыть задачу → панель
  **Development** правой кнопкой → **Link / Create branch** (GitHub toolkit) →
  выбрать ветку/коммиты. Либо связать автоматически, если в сообщении коммита
  стоит ключ задачи.
- Помощник для коммитов в нужном формате: `cv5/commit-task.sh`.

### Коммиты Cvičenia 6 в этой ветке (LaTeX-часть)

Артефакты LaTeX (6.5–6.7) лежат в `cv6/`. Формат сообщений:

```
FAKERADAR-16, 6.5 preklad vzoru prez.tex a porovnanie s prez-vzor.pdf
FAKERADAR-17, 6.6 iniciálna verzia prezentácie clanok -> prez.tex (beamer)
FAKERADAR-18, 6.7 experimenty s temou a farebnosou beameru (themes/)
```

> Номера задач `FAKERADAR-16…` — условные; при другом ключе/нумерации их надо
> подставить реальные и затем перегенерировать `git_log.txt` (см. `cv5/JIRA_PLAN.md`, E).

## 6.5–6.7 LaTeX (beamer) — **готово в репозитории**

Подробные заметки и сравнение: **`cv6/poznamky.md`**. Кратко:

- [x] **6.5** Скачан `prez.tex` → `cv6/prez-original.tex`, собран в `cv6/prez-original.pdf`
  (9 страниц), сравнён с `cv6/prez-vzor.pdf` — совпадает.
- [x] **6.6** Создан `cv6/prez.tex` + `cv6/prez.pdf` (15 слайдов): название, автор, дата,
  несколько секций, слайды с пунктами 1-го и 2-го уровня, слайд с рисунком.
- [x] **6.7** `cv6/prez-themes.tex` + `cv6/build-themes.sh` → 7 вариантов темы/цветности
  в `cv6/themes/`.

Команды:

```bash
cd cv6
pdflatex prez.tex && pdflatex prez.tex      # 6.6 (дважды)
./build-themes.sh                            # 6.7
```
