# Button

Na całej stronie są tylko dwa przyciski i oba w hero: primary „Pobierz PDF” / „Download PDF” i secondary „Napisz do mnie” / „Email me”; wszystko poza nimi jest linkiem. Oba: `text-nav` 15/20 px, padding 10 px `space-16`, `radius-4`, `min-width` zamiast stałej szerokości (PL jest dłuższy).

```html
<a class="cv-btn cv-btn--primary" href="/cv.pdf">Pobierz PDF</a>
<a class="cv-btn cv-btn--secondary" href="mailto:…">Napisz do mnie</a>
```

- Primary: tło `color-fg`, tekst `color-bg`. Hover: tekst podkreślony, tło bez zmian.
- Secondary: tekst `color-fg`, obramowanie `line-rule` w `color-rule` (1.25:1 na tle: obramowanie jest dekoracyjne, przycisk identyfikuje etykieta). Hover: obramowanie `color-fg`, przejście `duration-hover`.
- Bez ikon, bez strzałek, bez cieni. W druku przyciski są ukryte (zamiast „Pobierz PDF” czytelnik trzyma wydruk).
- Nie dodawaj trzeciego przycisku ani wariantów (ghost, danger, rozmiary). Jeśli coś nie jest jednym z tych dwóch, zrób z tego `Link`.
- Konsument podaje: etykietę w sentence case i `href` (element `<a>`; `<button class="cv-btn">` tylko, gdy akcja nie jest nawigacją).
