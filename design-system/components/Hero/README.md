# Hero

Nagłówek osoby: imię i nazwisko, rola w jednym wierszu, lead 1–2 zdania, wiersz kontaktu i najwyżej dwa przyciski, wszystko do lewej. Kolejność od góry jest stała: `.cv-hero__name` (`text-display`, mono), `.cv-hero__role` (`text-meta`, `color-fg-muted`, np. „Backend developer, PHP i Laravel”), `.cv-hero__lead` (`text-lead`, o tym, co robisz i dla kogo), `ContactRow`, `.cv-hero__actions` z dwoma `Button`.

```html
<header class="cv-hero">
  <div class="cv-hero__text">
    <h1 class="cv-hero__name">Imię Nazwisko</h1>
    <p class="cv-hero__role">Backend developer, PHP i&nbsp;Laravel</p>
    <p class="cv-hero__lead">Jedno albo dwa zdania.</p>
    <ul class="cv-contact cv-hero__contact">…</ul>
    <div class="cv-hero__actions">
      <a class="cv-btn cv-btn--primary" href="/cv.pdf">Pobierz PDF</a>
      <a class="cv-btn cv-btn--secondary" href="mailto:…">Napisz do mnie</a>
    </div>
  </div>
  <img class="cv-hero__photo" src="…" alt="" width="120" height="120">
</header>
```

- Zdjęcie jest opcjonalne: slot `layout-photo` 96 × 96 px (desktop `layout-photo-desktop` 120 × 120), kwadrat z `radius-4` albo koło (`.cv-hero__photo--round`), po prawej stronie tekstu. Domyślnie widoczne tylko w wersji PL: wewnątrz `lang="en"` jest ukryte (`.cv-hero__photo--show` wymusza pokazanie). Układ bez zdjęcia jest bazowy, więc pusty slot nie zostawia dziury.
- Nigdy centrowanie. Bez tekstu w stylu „Witaj na mojej stronie”. W leadzie twarde spacje po jednoliterowych spójnikach (PL).
- Na mobile (< 640 px) nazwisko przechodzi w `text-display-mobile` 30/36 px.
- W druku: `text-display` 22 pt, przyciski ukryte, zdjęcie ukryte w EN.
- Treść w podglądzie jest przykładowa; konsument podaje nazwisko, rolę, lead, linki kontaktu, adresy PDF i e-maila oraz zdjęcie.
