# Link

Link w treści: `color-accent`, `text-decoration: underline`, `text-underline-offset` 3 px (`line-underline-offset`), grubość 1 px (`line-underline`); hover `color-accent-hover` w `duration-hover`. Bez dopisywanych strzałek, bez ikonki „external”, bez `target="_blank"` jako domyślnego.

```html
<p class="cv-prose">Tekst z <a href="https://…">linkiem</a>.</p>
<!-- poza .cv-prose -->
<a class="cv-link" href="https://…">Link</a>
```

- Wewnątrz `.cv-prose`, `.cv-contact`, `.cv-entry__org`, `.cv-project__title` i `.cv-colophon` każde `<a>` dostaje ten styl samo; gdzie indziej dodaj `.cv-link`.
- To jedyne miejsce, gdzie na stronie pojawia się `color-accent` poza przełącznikiem języka i wordmarkiem.
- Tekst linku nazywa cel („na GitHubie”, „osobnym wpisie”), nie „tutaj”.
- W druku: czarny, podkreślony, przy linkach `http…` adres URL dopisany w nawiasie po tekście (`::after { content: " (" attr(href) ")" }`).
- Konsument podaje: tekst i `href`.
