# mis_lab_221277

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# Лабораториска Вежба 1 – Flutter (Распоред на испити)

Инсталирајте го Flutter SDK и соодветно IDE (Android Studio / VS Code) на вашиот компјутер и направете нов Flutter проект.

Креирајте Flutter апликација за распоред на испити со следните функционалности:

---

## 1. Почетен екран (Листа на испити)

* Насловот во AppBar да биде: **"Распоред за испити – [број на индекс]"**
* Прикажете листа на испити и нивните термини (минимум 10 испити)
* За секој испит прикажете:

    * Име на предмет
    * Датум на испит
    * Време на испит
    * Простории во кои се одржува испитот
* Дизајнот треба да биде со **Card widget**
* Најдолу додадете **беџ** кој го прикажува вкупниот број на испити
* Испитите во листата да бидат **подредени хронолошки по датум**
* Користете **различни бои** за испити кои се минати и идни
* Додадете икони релевантни за секој елемент (датум, време, простории)

---

## 2. Модел

Креирајте класа **Exam** со следните полиња:

* **Име на предмет** (`String`)
* **Датум и време** (`DateTime`)
* **Простории** (`List<String>`)

---

## 3. Детален преглед за испит

* При клик на картичка, испитот се отвора во **нов екран**
* Прикажете ги сите детали за тој испит
* Прикажете колку време преостанува до испитот (разлика меѓу тековниот датум и датумот на испит)
* Формат на преостанато време: **"X дена, Y часа"**

---

## Технички барања

* Користете **статички податоци** (hardcoded листа на испити)
* Користете **named параметри** во конструкторите
* Организирајте го кодот во посебни фајлови и фолдери:

    * `models/`
    * `screens/`
    * `widgets/`

---

## Забелешка

Почитувајте правилна структура, чист код и доследен Flutter стил во имплементацијата.
