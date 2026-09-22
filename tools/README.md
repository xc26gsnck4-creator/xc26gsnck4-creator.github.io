# Generowanie PDF-ów (przycisk „Pobierz PDF”)

PDF to wydruk tej samej strony przez arkusz `@media print` z `bundle.css` (A4, 18 mm / 20 mm, jedna kolumna) plus reguły druku z `site.css`. Generuj po każdej zmianie treści, w obu językach.

## Wariant A: Chrome / Chromium bez zależności

Uruchom serwer statyczny w `site/` (np. `python3 -m http.server 8080`), potem:

```sh
chrome --headless --no-pdf-header-footer --print-to-pdf=site/cv-hubert-jedrzejek-pl.pdf http://localhost:8080/
chrome --headless --no-pdf-header-footer --print-to-pdf=site/cv-hubert-jedrzejek-en.pdf http://localhost:8080/en/
```

(`chrome` = `google-chrome`, `chromium` albo pełna ścieżka do binarki, zależnie od systemu.)

## Wariant B: Playwright (Python)

```sh
pip install playwright && playwright install chromium
python3 tools/make_pdf.py            # zapisuje oba PDF-y do site/
```

Po wygenerowaniu sprawdź liczbę stron (`pdfinfo site/cv-hubert-jedrzejek-en.pdf`) i wydruk w skali szarości: hierarchia ma być czytelna bez koloru.
