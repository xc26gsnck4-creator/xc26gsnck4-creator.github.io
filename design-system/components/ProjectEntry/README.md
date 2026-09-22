# ProjectEntry

Wpis projektu lub pakietu open source: tytuł (`text-h3`) jako link, jedno zdanie opisu (`text-body`), opcjonalnie jedna liczba w mono `text-meta` i `color-fg-subtle` (pobrania, gwiazdki, użytkownicy), tagi. Lista pionowa z odstępem `space-32`, nie siatka kart.

```html
<article class="cv-project">
  <h3 class="cv-project__title"><a href="https://…">nazwa-pakietu</a></h3>
  <p class="cv-project__desc">Jedno zdanie o tym, co robi i dla kogo.</p>
  <p class="cv-project__stat">1 240 pobrań</p>
  <div class="cv-project__tags"><ul class="cv-tags">…</ul></div>
  <img class="cv-project__image cv-project__image--breakout" src="…" alt="…" loading="lazy">
</article>
```

- Jeżeli projekt ma obraz, to jeden: 16:9 albo 1:1, bez cienia, `radius-4`, `loading="lazy"`. Może wychodzić poza kolumnę treści w prawo (`.cv-project__image--breakout` zdejmuje `max-width` od 1024 px; szerokość wyjścia ustala konsument) i jest to jedyny dozwolony „breakout” na stronie.
- Traktuj listę jak część CV (dorobek), nie jak galerię: bez miniatur na każdym wpisie, bez ikon GitHub, bez liczników gwiazdek jako ozdoby (jedna liczba, jeśli coś mówi).
- Nazwy projektów w podglądzie są przykładowe.
- W druku `break-inside: avoid`; link tytułu czarny z URL w nawiasie.
- Konsument podaje: tytuł i `href`, jedno zdanie, opcjonalną liczbę, tagi, opcjonalny obraz.
