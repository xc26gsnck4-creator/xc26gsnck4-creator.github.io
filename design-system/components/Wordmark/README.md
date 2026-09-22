# Wordmark

Tekstowy monogram w mono, 14 px, wersalikami, z jednym detalem w `color-accent`; zastępuje logo, którego w systemie nie ma. Treść: domena albo inicjały. Akcent dostaje kropka albo ostatni znak (`.cv-wordmark__accent`), nigdy całe słowo. Jest linkiem do góry strony.

```html
<a class="cv-wordmark" href="#top">HJ<span class="cv-wordmark__accent">.</span></a>
```

- Miejsce: góra lewego railu na desktopie, lewy górny róg na mobile. W druku: nagłówek dokumentu.
- Tracking 0.06 em, `text-transform: uppercase` (jedyne wersaliki w systemie), `font-variant-ligatures: none`.
- Nie dodawaj ikony, ramki ani tła. Nie zmieniaj koloru tekstu poza jednym detalem.
- Konsument podaje: treść (domena lub inicjały) i `href`.
