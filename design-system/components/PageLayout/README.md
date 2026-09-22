# PageLayout

Układ strony: na desktopie (≥ 1024 px) lewy rail `layout-rail` 260 px (wordmark, nazwisko w `text-h3`, `Nav`, `ContactRow`, `LanguageSwitch` i `ThemeSwitch`), sticky od `layout-rail-top` przy oknie ≥ 700 px, pion `line-rule` w `color-rule` między railem a treścią od góry do końca treści, gutter `layout-gutter` 48 px i kolumna treści maks. `layout-content-max` 640 px; margines zewnętrzny `layout-margin-desktop`, od 1440 px kontener `layout-container-max` wycentrowany z treścią nadal do lewej.

```html
<div class="cv-page">
  <aside class="cv-rail">
    <a class="cv-wordmark" href="#top">…</a>
    <p class="cv-rail__name">Imię Nazwisko</p>
    <ul class="cv-nav">…</ul>
    <ul class="cv-contact">…</ul>
    <div class="cv-rail__switches"><ul class="cv-lang">…</ul><button class="cv-theme">…</button></div>
  </aside>
  <main class="cv-main" id="top">
    <header class="cv-hero">…</header>
    <section class="cv-section" id="doswiadczenie">…</section>
    <section class="cv-section" id="projekty">…</section>
    <section class="cv-section" id="umiejetnosci">…</section>
    <section class="cv-section" id="edukacja">…</section>
    <div class="cv-fine">…</div>
    <footer class="cv-colophon">…</footer>
    <a class="cv-top" href="#top">Do góry</a>
  </main>
</div>
```

- Tablet (640–1023 px): jedna kolumna, hero na górze, nawigacja jako wiersz linków, pion znika. Mobile (< 640 px): margines `layout-margin-mobile` 20 px, daty nad tytułami, tagi zawijają się, „Do góry” w stopce.
- Kolejność sekcji identyczna w obu językach: hero, doświadczenie, projekty i open source, umiejętności, (wystąpienia i teksty), edukacja i certyfikaty, drobny druk (PL) i kolofon.
- Wszystko do lewej, bez justowania, bez siatki kart. Jedyny element wychodzący poza kolumnę treści to obraz projektu.
- Bez JavaScriptu układ działa w całości; JS tylko zapisuje motyw i podświetla aktywną sekcję.
- Druk: `@page A4 18 mm 20 mm`, jedna kolumna, rail znika, wordmark i kontakt jako nagłówek dokumentu, EN na jednej stronie, PL na maks. dwóch.
- Konsument podaje: treść railu i sekcji w jednej wersji językowej oraz `lang` na `<html>` (lub kontenerze wersji).
