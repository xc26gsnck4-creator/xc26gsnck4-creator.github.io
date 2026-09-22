# Drukuje site/index.html i site/en/index.html do PDF (A4) przez Playwright.
# Użycie: python3 tools/make_pdf.py   (z katalogu głównego paczki)
import os, asyncio
from playwright.async_api import async_playwright

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SITE = os.path.join(ROOT, "site")
PAGES = [("pl", "index.html"), ("en", os.path.join("en", "index.html"))]


async def main():
    async with async_playwright() as pw:
        browser = await pw.chromium.launch()
        for lang, rel in PAGES:
            page = await browser.new_page(viewport={"width": 1000, "height": 900})
            await page.goto("file://" + os.path.join(SITE, rel))
            await page.evaluate("document.fonts.ready")
            await page.emulate_media(media="print")
            out = os.path.join(SITE, "cv-hubert-jedrzejek-%s.pdf" % lang)
            await page.pdf(path=out, format="A4", prefer_css_page_size=True, print_background=True)
            print("zapisano", out)
            await page.close()
        await browser.close()


asyncio.run(main())
