#!/bin/sh
# Localizes Polish CV section names and levels

if [ -f "pl/index.html" ]; then
  sed -i \
    -e 's/>Work Experience</>Doświadczenie zawodowe</g' \
    -e 's/>Skills</>Umiejętności</g' \
    -e 's/>Languages</>Języki</g' \
    -e 's/>Certificates</>Certyfikaty</g' \
    -e 's/>Master</>Ekspert</g' \
    -e 's/>Advanced</>Zaawansowany</g' \
    -e 's/>Intermediate</>Średniozaawansowany</g' \
    -e 's/>Native Speaker</>Język ojczysty</g' \
    -e 's/>Fluent</>Biegły</g' \
    pl/index.html
  echo "Localized pl/index.html"
fi
