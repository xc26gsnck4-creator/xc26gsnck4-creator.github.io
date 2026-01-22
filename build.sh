#!/bin/bash
set -e

echo "Building CV..."

docker compose run --rm cv render resume-pl.json -t jsonresume-theme-stackoverflow -o pl/index.html
docker compose run --rm cv render resume-en.json -t jsonresume-theme-stackoverflow -o en/index.html

# Localize Polish CV section names
docker run --rm -v "$(pwd):/cv" -w /cv alpine sh /cv/localize-pl.sh

# Inject SEO meta tags, hreflang, and Person schema
docker run --rm -v "$(pwd):/cv" -w /cv alpine sh /cv/seo-inject.sh

echo "Done! Files generated in pl/ and en/"
echo "Run: docker run --rm -p 8000:8000 -v \"\$(pwd):/srv\" python:3-alpine python -m http.server 8000 --directory /srv"
echo "Open: http://localhost:8000"
