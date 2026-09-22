# Tag

Etykieta technologii w mono `text-tag` 13/16 px, `color-fg-muted` na `color-surface`, padding 2 px `space-8`, `radius-4`, bez obramowania; lista `.cv-tags` zawija się z odstępem 6 px. Bez kolorów per technologia.

```html
<ul class="cv-tags">
  <li class="cv-tag">Laravel</li>
  <li class="cv-tag">PostgreSQL</li>
</ul>
```

- Padding 2 px i odstęp 6 px to wartości spoza skali odstępów, zapisane wprost w DESIGN.md (4.9) i celowo zachowane.
- Tag jest tekstem, nie linkiem i nie przyciskiem: bez `href`, bez ikon, bez „×”.
- Nazwy jak w oficjalnej pisowni („PostgreSQL”, „GitHub Actions”), wersje tylko, gdy coś znaczą.
- W druku: tekst rozdzielony przecinkami, bez tła (`.cv-tag + .cv-tag::before { content: ", " }`).
- Konsument podaje: listę nazw.
