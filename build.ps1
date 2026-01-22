Write-Host "Building CV..."

docker compose run --rm cv render resume-pl.json -t jsonresume-theme-stackoverflow -o pl/index.html
docker compose run --rm cv render resume-en.json -t jsonresume-theme-stackoverflow -o en/index.html

Write-Host "Done!"
Write-Host "Run: docker run --rm -p 8000:8000 -v `"${PWD}:/srv`" python:3-alpine python -m http.server 8000 --directory /srv"
Write-Host "Open: http://localhost:8000"
