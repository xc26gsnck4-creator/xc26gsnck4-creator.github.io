# Nav

Lista sekcji w railu na desktopie: `text-nav` 15/20 px, `color-fg-muted`, sekcja aktualnie w widoku w `color-fg` (`aria-current` albo `.is-active`). Poniżej 1024 px lista staje się wierszem linków pod hero z paddingiem `space-12` w pionie (cel dotykowy ≥ 44 px); na mobile nie ma stałej nawigacji, sekcje po prostu następują po sobie, a w stopce jest jeden link „Do góry” (`.cv-top`).

```html
<ul class="cv-nav">
  <li><a href="#doswiadczenie" aria-current="true">Doświadczenie</a></li>
  <li><a href="#projekty">Projekty i&nbsp;open source</a></li>
  <li><a href="#umiejetnosci">Umiejętności</a></li>
  <li><a href="#edukacja">Edukacja i&nbsp;certyfikaty</a></li>
</ul>
```

- Etykiety w sentence case, identyczne z nagłówkami sekcji. Bez numeracji, bez ikon, bez wersalików.
- Kolejność jak w układzie: Doświadczenie, Projekty i open source, Umiejętności, (Wystąpienia i teksty), Edukacja i certyfikaty.
- Podświetlenie aktywnej sekcji przy przewijaniu to jedyne, obok zapisu motywu, zadanie JavaScriptu; bez JS lista działa jak zwykłe kotwice.
- W druku nawigacja jest ukryta.
- Konsument podaje: listę sekcji z `href` do kotwic w bieżącej wersji językowej.
