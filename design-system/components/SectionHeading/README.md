# SectionHeading

Nagłówek sekcji w mono `text-h2` 20/28 px z odstępem `space-64` nad (mobile `space-48`) i `space-24` pod; stoi sam, bez linii pod nim (linię ma rail) i bez etykiety nad nim. Sekcja to `<section class="cv-section" id="…">` z `<h2 class="cv-section__title">`.

```html
<section class="cv-section" id="doswiadczenie">
  <h2 class="cv-section__title">Doświadczenie</h2>
  …
</section>
```

- Etykiety: „Doświadczenie” / „Experience”, „Projekty i open source” / „Projects and open source”, „Umiejętności” / „Skills”, „Wystąpienia i teksty” / „Talks and writing”, „Edukacja i certyfikaty” / „Education and certificates”. Sentence case.
- Nie wyróżniaj jednego słowa kolorem ani kursywą. Bez numeracji „01 / 02”. `hyphens: manual`.
- Pierwsza sekcja w kolumnie treści (po hero) dostaje `.cv-section--first` albo jest pierwszym dzieckiem `.cv-main`: wtedy bez górnego odstępu.
- W druku `text-h2` 13 pt, `break-after: avoid`.
- Konsument podaje: `id` kotwicy (spójne z `Nav` i `LanguageSwitch`) i tytuł.
