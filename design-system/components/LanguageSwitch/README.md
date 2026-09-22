# LanguageSwitch

Tekst „PL / EN” w mono `text-meta`; aktywny język ma `color-fg` i podkreślenie `line-lang-underline` (2 px) w `color-accent`, nieaktywny `color-fg-subtle`. Bez flag: flaga oznacza kraj, nie język. Kolor nie jest jedynym nośnikiem stanu (jest też podkreślenie i pełna czerń).

```html
<ul class="cv-lang" aria-label="Język">
  <li><a href="/pl/#doswiadczenie" aria-current="true" hreflang="pl" lang="pl">PL</a></li>
  <li class="cv-lang__sep" aria-hidden="true">/</li>
  <li><a href="/en/#experience" hreflang="en" lang="en">EN</a></li>
</ul>
```

- Pozycja: rail na desktopie (obok `ThemeSwitch`), prawy górny róg na mobile. Poniżej 1024 px linki mają padding `space-12` w pionie.
- Przełączenie prowadzi do tej samej sekcji w drugiej wersji (`/pl/#doswiadczenie` ↔ `/en/#experience`); w `<head>` obu wersji `<link rel="alternate" hreflang="…">`.
- W druku ukryty.
- Konsument podaje: dwa `href` do odpowiadających sobie sekcji i który język jest aktywny (`aria-current`).
