# ThemeSwitch

Przełącznik motywu jako tekst („Ciemny” / „Jasny”, EN „Dark” / „Light”) w mono `text-meta`, `color-fg-subtle`, albo jako ikona 16 px z `aria-label`; stoi w railu obok `LanguageSwitch`. Wybór zapisuje się w `localStorage` i trafia na `<html data-theme="light|dark">`; domyślnie obowiązuje `prefers-color-scheme`.

```html
<button class="cv-theme" type="button" aria-pressed="false">Ciemny</button>
<!-- albo -->
<button class="cv-theme" type="button" aria-label="Przełącz motyw ciemny"><svg class="cv-theme__icon" …></svg></button>
```

- Etykieta nazywa motyw, na który przełącza (na jasnej stronie „Ciemny”). Po przełączeniu zmień etykietę i `aria-pressed`.
- Jedyna zmiana wizualna przy przełączeniu to podmiana tokenów kolorów (`duration-hover`); nic się nie animuje.
- Bez JavaScriptu przycisk nie działa: gdy JS jest wyłączony, ukryj go (`hidden`) i zostaw motyw systemowy z `prefers-color-scheme`.
- W druku ukryty. Poniżej 1024 px padding `space-12` w pionie.
- Konsument podaje: etykietę w bieżącym języku i obsługę kliknięcia (jedyny skrypt na stronie obok podświetlenia nawigacji).
