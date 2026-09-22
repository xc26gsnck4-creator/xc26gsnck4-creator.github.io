# hubertjedrzejek.pl — paczka do Claude Code

Gotowa, statyczna strona domowa zbudowana z projektu na kanwie (Design) w design systemie „Kartka i terminal”. Nie trzeba niczego przepisywać z makiet: HTML, CSS, fonty, zdjęcie i PDF-y są w `site/`.

## Co jest w środku

```
CLAUDE.md                      instrukcje dla Claude Code (stack, zasady, czego nie zmyślać)
DESIGN.md                      README design systemu (kopia; źródło prawdy o wyglądzie)
README.md                      ten plik
design-system/
  tokens.json                  tokeny (kolory w 3 motywach, typografia, odstępy, układ, druk)
  components/bundle.css        komponenty CSS z prefiksem cv- (kopia 1:1 w site/assets/css/)
  components/*/README.md       karty komponentów: co wolno, czego nie wolno
  guidelines/                  inspiracje i prompty dla agenta
site/                          document root
  index.html                   wersja PL
  en/index.html                wersja EN
  cv-hubert-jedrzejek-pl.pdf   wydruk strony PL (A4)
  cv-hubert-jedrzejek-en.pdf   wydruk strony EN (A4)
  assets/css/tokens.css        zmienne CSS + @font-face
  assets/css/bundle.css        komponenty (nie edytuj tu; zmiany idą przez design system)
  assets/css/site.css          kilka reguł tylko dla tej strony (mobile hero, pasek zamiast railu < 1024 px, druk)
  assets/js/site.js            motyw + aktywna sekcja (jedyny JS)
  assets/fonts/                JetBrains Mono 400/500, Inter (zmienny)
  assets/img/                  zdjęcie z hero (240 × 240)
tools/                         jak wygenerować PDF-y ponownie
```

## Jak zacząć w Claude Code

1. Rozpakuj paczkę do nowego katalogu i zainicjuj repozytorium (`git init`), żeby mieć historię zmian.
2. Uruchom `claude` w tym katalogu. `CLAUDE.md` zostanie wczytany automatycznie.
3. Podgląd: `cd site && python3 -m http.server 8080`, potem http://localhost:8080/ i http://localhost:8080/en/.

Przykładowe pierwsze polecenia:

- „Przeczytaj CLAUDE.md i DESIGN.md. Uruchom podgląd i sprawdź stronę na 390, 1024 i 1440 px w motywie jasnym i ciemnym. Wypisz wszystko, co odbiega od DESIGN.md, ale niczego jeszcze nie zmieniaj.”
- „Zmień lead w hero na: … Zaktualizuj obie wersje językowe i wygeneruj PDF-y ponownie według tools/README.md.”
- „Przenieś stronę do Laravela: layout Blade z railem, jeden widok z tablicą treści per język, trasy `/` i `/en`, assets bez zmian. Zachowaj identyczny HTML, tylko rozbij na komponenty Blade.”
- „Dodaj sekcję Wystąpienia i teksty zgodnie z kolejnością z DESIGN.md (między Umiejętności a Certyfikaty), w PL i EN.”

## Rzeczy do decyzji (zaznaczone w treści)

- Przycisk „Pobierz PDF” prowadzi do `cv-hubert-jedrzejek-pl.pdf` / `-en.pdf` (wydruk strony, obecnie 3 strony A4 każdy). Design system celuje w 1 stronę EN i 2 PL; jeśli chcesz krótsze CV, skróć wpisy albo ukryj w druku kolejne elementy w `site.css` (`@media print`).
- Klauzula RODO (tylko PL, na końcu strony i w PDF): brzmienie i podstawę prawną ustalasz Ty.
- „Współpraca” to sekcja spoza katalogu design systemu (oferta: długoterminowo + mniejsze projekty). W druku jest ukryta.
- Wersja mobilna hero (nazwisko obok zdjęcia, lead na całą szerokość) korzysta z `:has()`; w starych przeglądarkach zdjęcie po prostu staje obok całego tekstu, jak w bazowym komponencie.
