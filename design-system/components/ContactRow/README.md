# ContactRow

Wiersz linków tekstowych do kontaktu w mono `text-meta`, z odstępem `space-24` między pozycjami: „e-mail”, „GitHub”, „LinkedIn”, opcjonalnie „telefon”. Linki są tekstem, nie samymi ikonami.

```html
<ul class="cv-contact">
  <li><a href="mailto:…">e-mail</a></li>
  <li><a href="https://github.com/…">GitHub</a></li>
  <li><a href="https://www.linkedin.com/in/…">LinkedIn</a></li>
  <li class="cv-contact__phone"><a href="tel:…">telefon</a></li>
</ul>
```

- Telefon (`.cv-contact__phone`) pokazuje się tylko wewnątrz `lang="pl"` i w druku; w EN jest ukryty.
- Jeśli ikony, to 16 px w `color-fg-subtle` przed tekstem (`.cv-contact__icon`, `stroke: currentColor`), nigdy zamiast tekstu. Podgląd pokazuje wariant z ikoną przy „email” w wersji EN; wariant bez ikon jest domyślny.
- Linki stylowane jak `Link`: `color-accent`, podkreślenie 1 px z odsunięciem 3 px. W druku czarne z URL w nawiasie (mailto i tel bez dopisku).
- Zawija się w wiele wierszy; nie skracaj etykiet do skrótów ani ikon.
- Konsument podaje: listę pozycji z etykietą i `href`.
