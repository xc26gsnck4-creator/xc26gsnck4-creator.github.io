# SkillGroup

Grupa umiejętności: tytuł grupy w `text-h3` (np. „Backend”, „Infrastruktura”, „Frontend”, „Narzędzia”) i tagi pod nim po `space-8`; między grupami `space-32`. Zero pasków postępu, procentów, gwiazdek i „poziomów”.

```html
<section class="cv-skills">
  <h3 class="cv-skills__title">Backend</h3>
  <p class="cv-skills__note">Codziennie: PHP i&nbsp;Laravel. Regularnie: PostgreSQL. Znam: Go.</p>
  <ul class="cv-tags"><li class="cv-tag">PHP 8</li>…</ul>
</section>
```

- Jeżeli chcesz różnicować biegłość, użyj słów w opisie (`.cv-skills__note`, `text-body`): „codziennie”, „regularnie”, „znam”. Opis jest opcjonalny.
- Tagi bez kolorów per technologia, zawijają się; polskie nazwy z twardą spacją po „i”.
- W druku tagi jako tekst po przecinku, grupa `break-inside: avoid`.
- Konsument podaje: tytuł grupy, opcjonalny opis i listę tagów.
