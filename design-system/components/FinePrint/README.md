# FinePrint

Drobny druk w `text-fine` 12/18 px, `color-fg-subtle`, maks. 68 znaków w wierszu (`layout-measure-max`): klauzula RODO, tylko w wersji PL (strona i PDF), na końcu, przed kolofonem. Bez ramki, bez tła.

```html
<div class="cv-fine" lang="pl">
  <p>Wyrażam zgodę na przetwarzanie moich danych osobowych …</p>
</div>
```

- Treść klauzuli w podglądzie jest przykładowa; brzmienie i podstawę prawną ustala autor CV (to nie jest porada prawna).
- Twarde spacje po „z”, „i” i przed „r.”.
- W wersji EN komponent nie występuje. Kolofon (`Colophon`) stoi pod nim.
- W druku 9.5 pt (`print-meta`).
- Konsument podaje: treść klauzuli.
