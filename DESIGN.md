System projektowy osobistej strony CV programisty (backend, PHP/Laravel, infrastruktura) w dwóch wersjach językowych: polskiej i angielskiej. Ta sama struktura, ten sam układ, te same tokeny w obu językach. Trzy formy wyjściowe: strona www (desktop i mobile), wydruk A4 / PDF z tej samej treści, wariant ciemny jako opcja. Odbiorca: rekruter techniczny albo lead/CTO, który czyta 30–60 sekund na ekranie albo drukuje. Liczy się skanowalność i wiarygodność, nie efekt „wow”.

Zasada nadrzędna: **typografia niesie osobowość, reszta milczy.** Strona ma wyglądać jak dobrze złożony dokument, nie jak portfolio. W razie wątpliwości usuń element: jeżeli coś nie jest tekstem, odstępem ani jedną linią 1 px (`line-rule`, `color-rule`), musi mieć powód.

## Treść i głos

- Pisz w sentence case wszędzie. Wersaliki tylko w wordmarku. Etykiety po ludzku: „Doświadczenie”, „Pobierz PDF”, „Napisz do mnie”; EN: „Experience”, „Download PDF”, „Email me”.
- Zaczynaj hero od imienia i nazwiska (`text-display`) i roli w jednym wierszu (`text-meta`, np. „Backend developer, PHP i Laravel”). Lead to 1–2 zdania o tym, co robisz i dla kogo (`text-lead`). Bez tekstów w stylu „Witaj na mojej stronie”.
- Punkty we wpisach zaczynaj od czasownika i podawaj efekt, gdy da się go podać. Maksymalnie 4 punkty albo 1–3 zdania na wpis.
- Traktuj listę projektów jak część CV (open source to dorobek), nie jak galerię.
- Umiejętności różnicuj słowami w opisie („codziennie”, „regularnie”, „znam”), nigdy paskami, procentami, gwiazdkami ani poziomami.
- Bez emoji w treści i nagłówkach. Bez strzałek „→” przy linkach. Bez kropek „·” do sklejania meta: firmę i miasto rozdziela przecinek.
- Żadnych małych wersalikowych etykiet nad nagłówkami, żadnej numeracji „01 / 02 / 03”: treść CV nie jest sekwencją.

### Skład polski i angielski

To, co odróżnia tę stronę od szablonu. Obowiązuje w każdym komponencie.

- Polskie odpowiedniki są dłuższe niż angielskie: projektuj z zapasem 20–30 %. Tagi zawijają się, tytuły `text-h3` mogą mieć dwa wiersze, przyciski mają `min-width`, nie stałą szerokość.
- Sieroty: jednoliterowe spójniki i przyimki (a, i, o, u, w, z) nie kończą wiersza. W wersji PL po nich stoi twarda spacja (U+00A0); to samo po skrótach „np.”, „r.”, „tys.”.
- Cudzysłowy: PL „…” (U+201E i U+201D), EN “…” (U+201C i U+201D). Apostrof typograficzny ’.
- Zakresy dat półpauzą z odstępami: PL „03.2021 – 06.2024”, EN „Mar 2021 – Jun 2024”. W tekście PL półpauza z odstępami, nie pauza bez odstępów.
- Formaty dat: PL `MM.RRRR` (albo słownie „marzec 2021 – czerwiec 2024”), EN `Mon YYYY`. Kolumna dat ma stałą szerokość `layout-date-column` (17 znaków w mono), więc oba języki wyglądają identycznie.
- Ustaw `<html lang="pl">` / `<html lang="en">` (albo `lang` na kontenerze wersji): działa wtedy dzielenie wyrazów (`hyphens: auto`) i poprawne cudzysłowy w `quotes`.
- Przełączenie języka prowadzi do tej samej sekcji w drugiej wersji (`/pl/#doswiadczenie` ↔ `/en/#experience`), z `hreflang` w `<head>`.
- Zdjęcie w hero domyślnie widoczne tylko w wersji PL (w Polsce zdjęcie w CV jest normą); w EN domyślnie ukryte. Klauzula RODO tylko w wersji PL (strona i PDF).
- Fonty: subset musi obejmować Latin Extended. Pliki w `fonts/` są pełne; przy własnym subsetowaniu nie tnij do samego Latin.

## Kolor

Klimat „Kartka i terminal”: biały papier, czarny tekst, jeden kolor akcentowy. Motyw jasny jest domyślny i jest źródłem dla druku; ciemny to wariant.

- Tło strony: `color-bg` (czysta biel, nie krem). Tekst główny i nagłówki: `color-fg` (świadomie czysta czerń). Tekst drugoplanowy (wiersz firmy, treść tagów, nieaktywna nawigacja): `color-fg-muted`. Daty, meta, kolofon, drobny druk: `color-fg-subtle`, tylko na `color-bg`.
- Jedyny akcent: `color-accent`. Wolno go użyć wyłącznie do linków, podkreślenia aktywnego języka i jednego detalu w wordmarku. Nigdy jako tło sekcji, nigdy w nagłówkach, nigdy per technologia w tagach. Hover: `color-accent-hover`, przejście `duration-hover`.
- Linie 1 px: `color-rule` o grubości `line-rule`. Tła tagów i kodu inline: `color-surface`. Nic więcej nie ma tła.
- Fokus klawiatury: outline `line-focus` w `color-focus` z odstępem `line-focus-offset`, zawsze widoczny.
- Kontrast: tekst główny ≥ 7:1, tekst meta ≥ 4.5:1. Każda notka tokenu tekstowego podaje tła, na których jest czytelny, i zmierzone wartości. `color-fg-subtle` został skorygowany względem DESIGN.md, żeby spełnić ten próg (szczegóły w notce tokenu).
- Brak gradientów, brak półprzezroczystości, brak kolorowych teł sekcji. Kolor nigdy nie jest jedynym nośnikiem informacji: aktywny język ma też podkreślenie i pełną czerń tekstu.
- Alternatywy akcentu (`alt-accent-laravel` #FF2D20, `alt-accent-green` #0F5C3E) istnieją jako dokumentacja wyboru: wybierz jedną i nie mieszaj. Czerwień Laravela tylko na cienkich elementach (jako tekst nie spełnia 4.5:1).
- Druk: wyłącznie czerń na bieli (motyw `print`). Akcent nie występuje. Linki czarne, podkreślone; przy linkach zewnętrznych adres URL dopisany w nawiasie po tekście. Wydruk w skali szarości musi zachować pełną hierarchię.

## Typografia

Dwie rodziny i koniec. Zawsze mono + sans, nigdy dwa sansy.

- **JetBrains Mono** (`--font-mono`, SIL OFL, pliki `fonts/JetBrainsMono-Regular.woff2` 400 i `fonts/JetBrainsMono-Medium.woff2` 500) to pismo tytułowe i etykietowe: imię i nazwisko, nagłówki sekcji, daty, tagi, wordmark, kod. Pokrywa europejski zestaw łaciński: ą ę ł ś ż ź ć ń ó, Ą Ę Ł Ś Ż Ź Ć Ń Ó.
- **Inter** (`--font-sans`, SIL OFL, plik zmienny `fonts/InterVariable.woff2` 100–900) to pismo tekstowe: akapity, opisy, nawigacja, przyciski.
- Skala (16 px = 1 rem): `text-display` 40/44 (mobile `text-display-mobile` 30/36) imię i nazwisko; `text-h2` 20/28 nagłówki sekcji; `text-h3` 17/24 tytuły wpisów; `text-lead` 18/28 lead; `text-body` 16/26 treść; `text-nav` 15/20 nawigacja i przyciski; `text-meta` 14/20 daty i meta; `text-tag` 13/16 tagi i kolofon; `text-code` 14/20 kod; `text-fine` 12/18 klauzula RODO.
- Daty składaj z `font-variant-numeric: tabular-nums`, żeby kolumna lat była równa.
- Ligatury programistyczne JetBrains Mono wyłącz poza blokami kodu (`font-variant-ligatures: none`), inaczej „->” i „=>” w tekście zmienią kształt.
- Bez justowania. Akapity `hyphens: auto` przy poprawnym `lang`; nagłówki `hyphens: manual`. Nie wyróżniaj jednego słowa w nagłówku kolorem ani kursywą.
- Szerokość wiersza treści 60–68 znaków (`layout-measure-max`).
- Pary alternatywne, jeśli potrzebny inny charakter: IBM Plex Mono + IBM Plex Sans (jedna superrodzina, bardziej „inżynierska”, pełna polska diakrytyka) albo Berkeley Mono (płatny) + Karla (para z sebastiandedeyne.com; przy Karli sprawdź polskie znaki). Test obowiązkowy przed zatwierdzeniem kroju: wyrenderuj w każdym stylu skali zdanie „Zażółć gęślą jaźń. Pchnąć w tę łódź jeża lub ośm skrzyń fig.” i sprawdź, czy ogonki i kreski nie kolidują z interlinią.

## Odstępy i układ

- Skala odstępów: `space-4` … `space-96` (4, 8, 12, 16, 24, 32, 48, 64, 96 px). Nic pomiędzy. Między sekcjami `space-64`–`space-96`, wewnątrz wpisu `space-4`–`space-12`, między wpisami `space-32`.
- Desktop (≥ `bp-lg`): dwie kolumny. Lewy rail `layout-rail` (260 px), `position: sticky; top: layout-rail-top`, zawiera wordmark, imię i nazwisko w `text-h3`, nawigację, kontakt, przełączniki języka i motywu. Pion `line-rule` w `color-rule` między railem a treścią, od góry do końca treści (sygnatura z sebastiandedeyne.com). Kolumna treści maks. `layout-content-max` (640 px), gutter `layout-gutter` (48 px). Margines zewnętrzny `layout-margin-desktop` (64 px). Od `bp-xl` kontener `layout-container-max` (1080 px) wycentrowany, treść w nim nadal do lewej.
- Tablet (`bp-sm`–`bp-lg`): jedna kolumna. Hero na górze, nawigacja jako wiersz linków pod hero, pion znika.
- Mobile (< `bp-sm`): margines `layout-margin-mobile` (20 px), `text-display-mobile`, daty nad tytułami wpisów, tagi zawijają się.
- Kolejność sekcji, identyczna w obu językach: 1. Hero (imię i nazwisko, rola, lead, kontakt, przyciski); 2. Doświadczenie / Experience; 3. Projekty i open source / Projects and open source; 4. Umiejętności / Skills; 5. Wystąpienia i teksty / Talks and writing (opcjonalnie); 6. Edukacja i certyfikaty / Education and certificates; 7. Drobny druk (PL: klauzula RODO) i kolofon.
- Wyrównanie: wszystko do lewej. Nigdy centrowanie. Bez siatki kart. Jedyny element, który może wyjść poza kolumnę treści (w prawo), to pojedynczy obraz projektu.

## Głębia, linie, promienie

- `shadow-none` wszędzie: brak cieni, warstw, kart, rozmyć. Hierarchię budują wyłącznie krój i rozmiar pisma, odstęp i jedna linia 1 px.
- Jedyna „elewacja” to sticky rail, który po prostu zostaje na miejscu: bez tła i bez cienia po przewinięciu.
- Promienie: `radius-0` dla wszystkiego poza tagami, przyciskami, zdjęciem i obrazem projektu (`radius-4`) oraz kodem inline (`radius-3`).

## Komponenty

Komponent to tekst + odstęp + co najwyżej jedna linia 1 px. Bez kart, bez cieni, bez ikon dekoracyjnych. Komponenty są klasami CSS w `components/bundle.css` (prefiks `cv-`); strona działa bez JavaScriptu, JS obsługuje tylko zapis motywu i podświetlenie aktywnej sekcji. Katalog: Wordmark, Hero, ContactRow, Button, Nav, LanguageSwitch, ThemeSwitch, SectionHeading, ExperienceEntry, ProjectEntry, SkillGroup, Tag, Link, Code, FinePrint, Colophon, PageLayout. Każdy ma wytyczne i podgląd. Na stronie są tylko dwa przyciski i oba w hero („Pobierz PDF”, „Napisz do mnie”); wszystko inne jest linkiem.

## Ikonografia

Brak zestawu ikon i brak logo: wordmark to tekst (domena albo inicjały) w mono z jednym detalem w `color-accent`. Kontakt to linki tekstowe („e-mail”, „GitHub”, „LinkedIn”, opcjonalnie „telefon” tylko PL i druk), nie ikony. Jeśli ikony, to 16 px w `color-fg-subtle` przed tekstem, nigdy zamiast niego. Bez flag jako przełącznika języka (flaga oznacza kraj, nie język). Bez emoji, ilustracji, zdjęć stockowych, blobów, kropkowanych siatek w tle.

## Ruch

Praktycznie brak. Dozwolone tylko zmiana koloru na hover (`duration-hover`, ≤ 150 ms) i przełączenie motywu. Zero animacji przy przewijaniu, zero fade-in, liczników, efektu typewriter, ozdobnych kursorów. Szanuj `prefers-reduced-motion`.

## Druk / PDF (A4)

- `@page { size: A4; margin: print-margin-y print-margin-x; }` (18 mm 20 mm).
- Jedna kolumna, rail znika. Wordmark i kontakt jako nagłówek dokumentu. Rozmiary: treść `print-body`/`print-body-line` (10.5/15 pt), `print-h3` 11 pt, `print-h2` 13 pt, `print-display` 22 pt, `print-meta` 9.5 pt.
- Ukryte: nawigacja, przełączniki, przyciski, zdjęcie w wersji EN. Tagi jako tekst rozdzielony przecinkami, bez tła.
- `break-inside: avoid` na wpisach, `break-after: avoid` na nagłówkach sekcji.
- Cel: EN na jednej stronie, PL na maks. dwóch (z klauzulą RODO). Czarny tekst, białe tło, linki podkreślone czarne z URL w nawiasie. Ten sam PDF nadaje się do ATS: brak kolumn, tabel, ikon i grafik w treści.

## Responsywność

- Breakpointy `bp-sm` 640, `bp-lg` 1024, `bp-xl` 1440 px.
- Cele dotykowe ≥ `layout-touch-target` (44 px): linki nawigacji i przełączniki mają na mobile padding `space-12` w pionie.
- Obrazy: `max-width: 100%`, `height: auto`, `loading="lazy"` poza hero.
- Rail sticky tylko ≥ `bp-lg` i tylko przy wysokości okna ≥ `bp-rail-min-height`; inaczej statyczny.
- Długie adresy w kolofonie: `overflow-wrap: anywhere`.
- Motyw: `@media (prefers-color-scheme: dark)` plus ręczny override przez `[data-theme="light|dark"]`, zapis wyboru w `localStorage`.

## Rób / nie rób

Rób: dwie rodziny pisma i jeden akcent; testuj każdy ekran z treścią polską i angielską (PL jest dłuższy); sprawdzaj wydruk w skali szarości; pisz etykiety w sentence case; zaczynaj hero od nazwiska i roli.

Nie rób: kremowego tła z kontrastowym szeryfem i terakotowym akcentem (rozpoznawalny szablon generowany przez AI); czarnego tła z jaskrawozielonym albo vermilionowym akcentem; siatki identycznych kart z jednym radiusem i szarym cieniem; gradientów, glassmorphizmu, blobów; wersalikowych etykiet nad nagłówkami i numeracji sekcji; pasków umiejętności, procentów, gwiazdek, wykresów radarowych; ikon zamiast tekstu w kontakcie; flag jako przełącznika języka; emoji; strzałek przy linkach i kropek środkowych w meta; animacji przy przewijaniu; więcej niż dwóch przycisków na stronie; zdjęcia w wersji EN domyślnie; osi czasu z kropkami i linią przy doświadczeniu.
