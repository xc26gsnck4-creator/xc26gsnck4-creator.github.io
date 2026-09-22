# ExperienceEntry

Wpis doświadczenia w dwóch kolumnach wewnątrz kolumny treści: lewa `layout-date-column` (17 ch) w mono `text-meta` i `color-fg-subtle` z zakresem dat, prawa z treścią; poniżej 640 px daty przechodzą nad tytuł. Wiersz 1 to stanowisko (`text-h3`, `color-fg`), wiersz 2 firma i miasto (`text-meta`, `color-fg-muted`, rozdzielone przecinkiem, firma jako link, jeśli ma stronę), potem 1–3 zdania albo do 4 punktów (`text-body`) i tagi po `space-12`.

```html
<article class="cv-entry">
  <div class="cv-entry__dates">03.2021 – 06.2024</div>
  <div>
    <h3 class="cv-entry__title">Stanowisko</h3>
    <p class="cv-entry__org"><a href="https://…">Firma</a>, Miasto</p>
    <div class="cv-entry__body"><ul><li>Czasownik na początku, efekt na końcu.</li></ul></div>
    <div class="cv-entry__tags"><ul class="cv-tags"><li class="cv-tag">Laravel</li></ul></div>
  </div>
</article>
```

- Daty: PL `MM.RRRR – MM.RRRR`, EN `Mon YYYY – Mon YYYY`, półpauza z odstępami, `tabular-nums`. Kolumna ma stałą szerokość, więc oba języki wyglądają identycznie.
- Punkty zaczynają się od czasownika i zawierają efekt, gdy da się go podać. Maksymalnie 4.
- Odstęp między wpisami `space-32`. Bez ramek, bez tła, bez „linii czasu” z kropkami, bez kropki środkowej między firmą a miastem.
- Tytuł może mieć dwa wiersze (PL jest dłuższy): testuj najdłuższe realistyczne stanowisko i nazwę firmy na 390 px.
- W druku `break-inside: avoid`, `text-h3` 11 pt, meta 9.5 pt, tagi jako tekst po przecinku.
- Konsument podaje: zakres dat, stanowisko, firmę (z `href` lub bez), miasto, treść i listę tagów.
