# Colophon

Jedna linia mono `text-tag` 13/16 px w `color-fg-subtle`: kroje pisma, rok, link do repozytorium strony, jeśli jest publiczne. Wzór z brittanychiang.com i paco.me („Set in Inter and JetBrains Mono”).

```html
<footer class="cv-colophon"><p>Złożone w&nbsp;Inter i&nbsp;JetBrains Mono. 2026. <a href="https://…">Kod strony</a>.</p></footer>
```

- Ostatni element strony, po drobnym druku. Na mobile nad nim może stać jeden link „Do góry” (`.cv-top`).
- Długie adresy: `overflow-wrap: anywhere`. Link w stylu `Link`.
- Bez ikon, bez „© wszystkie prawa zastrzeżone”, bez licznika odwiedzin.
- Konsument podaje: nazwy krojów, rok, opcjonalny `href` repozytorium.
