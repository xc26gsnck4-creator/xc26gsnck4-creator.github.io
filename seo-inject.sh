#!/bin/sh
# SEO injection script for bilingual CV site
# Injects meta tags, hreflang, Open Graph, and Person schema into generated HTML files

set -e

DOMAIN="https://hubertjedrzejek.pl"

# Function to inject SEO into English CV
inject_en() {
    local file="en/index.html"

    if [ ! -f "$file" ]; then
        echo "Warning: $file not found, skipping"
        return
    fi

    echo "Injecting SEO into $file..."

    # Replace <html> with lang attribute
    sed -i 's/<html>/<html lang="en">/' "$file"

    # Replace title
    sed -i 's#<title>Hubert Jędrzejek</title>#<title>Hubert Jedrzejek | Senior Laravel Developer | PHP 15+ yrs</title>#' "$file"

    # Create meta tags file
    cat > /tmp/meta_en.txt << 'METATAGS'
  <meta name="description" content="Senior Laravel developer with 15+ years PHP experience specializing in legacy code modernization and system migration. Based in Wroclaw, Poland.">
  <link rel="canonical" href="https://hubertjedrzejek.pl/en/">
  <link rel="alternate" hreflang="en" href="https://hubertjedrzejek.pl/en/">
  <link rel="alternate" hreflang="pl" href="https://hubertjedrzejek.pl/pl/">
  <link rel="alternate" hreflang="x-default" href="https://hubertjedrzejek.pl/en/">
  <meta property="og:type" content="profile">
  <meta property="og:title" content="Hubert Jedrzejek | Senior Laravel Developer | PHP 15+ yrs">
  <meta property="og:description" content="Senior Laravel developer with 15+ years PHP experience specializing in legacy code modernization and system migration. Based in Wroclaw, Poland.">
  <meta property="og:url" content="https://hubertjedrzejek.pl/en/">
  <meta property="og:locale" content="en_US">
  <meta name="twitter:card" content="summary">
  <meta name="twitter:title" content="Hubert Jedrzejek | Senior Laravel Developer">
  <meta name="twitter:description" content="Senior Laravel developer with 15+ years PHP experience specializing in legacy code modernization.">
METATAGS

    # Insert meta tags after <meta charset="utf-8">
    sed -i '/<meta charset="utf-8">/r /tmp/meta_en.txt' "$file"

    # Insert schema before </head> (sed r inserts after the match, which is fine for our purpose)
    sed -i '/<\/head>/i\
<script type="application/ld+json">{"@context":"https://schema.org","@type":"Person","name":"Hubert Jedrzejek","jobTitle":"Senior Laravel Developer","url":"https://hubertjedrzejek.pl","sameAs":["https://linkedin.com/in/hubertjedrzejek"],"knowsAbout":["PHP","Laravel","Legacy Code Modernization","System Migration","Lumen","REST API","MySQL"],"address":{"@type":"PostalAddress","addressLocality":"Wroclaw","addressRegion":"Lower Silesia","addressCountry":"PL"},"hasCredential":[{"@type":"EducationalOccupationalCredential","name":"Zend Framework: Advanced Course","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"Zend Framework: Fundamentals Course","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"MS: Programming in HTML5 with JavaScript and CSS3","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"MCTS: SQL Server 2008, Database Development","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"MCITP: Database Administrator 2008","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"MCTS: SQL Server 2008, Implementation and Maintenance","credentialCategory":"certification"}]}</script>
' "$file"

    echo "Done: $file"
}

# Function to inject SEO into Polish CV
inject_pl() {
    local file="pl/index.html"

    if [ ! -f "$file" ]; then
        echo "Warning: $file not found, skipping"
        return
    fi

    echo "Injecting SEO into $file..."

    # Replace <html> with lang attribute
    sed -i 's/<html>/<html lang="pl">/' "$file"

    # Replace title
    sed -i 's#<title>Hubert Jędrzejek</title>#<title>Hubert Jedrzejek | Senior Laravel Developer | 15+ lat w PHP</title>#' "$file"

    # Create meta tags file
    cat > /tmp/meta_pl.txt << 'METATAGS'
  <meta name="description" content="Senior Laravel developer z ponad 15-letnim doswiadczeniem w PHP. Specjalizacja: modernizacja legacy code, migracja systemow. Wroclaw.">
  <link rel="canonical" href="https://hubertjedrzejek.pl/pl/">
  <link rel="alternate" hreflang="en" href="https://hubertjedrzejek.pl/en/">
  <link rel="alternate" hreflang="pl" href="https://hubertjedrzejek.pl/pl/">
  <link rel="alternate" hreflang="x-default" href="https://hubertjedrzejek.pl/en/">
  <meta property="og:type" content="profile">
  <meta property="og:title" content="Hubert Jedrzejek | Senior Laravel Developer | 15+ lat w PHP">
  <meta property="og:description" content="Senior Laravel developer z ponad 15-letnim doswiadczeniem w PHP. Specjalizacja: modernizacja legacy code, migracja systemow. Wroclaw.">
  <meta property="og:url" content="https://hubertjedrzejek.pl/pl/">
  <meta property="og:locale" content="pl_PL">
  <meta name="twitter:card" content="summary">
  <meta name="twitter:title" content="Hubert Jedrzejek | Senior Laravel Developer">
  <meta name="twitter:description" content="Senior Laravel developer z ponad 15-letnim doswiadczeniem w PHP.">
METATAGS

    # Insert meta tags after <meta charset="utf-8">
    sed -i '/<meta charset="utf-8">/r /tmp/meta_pl.txt' "$file"

    # Insert schema before </head>
    sed -i '/<\/head>/i\
<script type="application/ld+json">{"@context":"https://schema.org","@type":"Person","name":"Hubert Jedrzejek","jobTitle":"Senior Laravel Developer","url":"https://hubertjedrzejek.pl","sameAs":["https://linkedin.com/in/hubertjedrzejek"],"knowsAbout":["PHP","Laravel","Legacy Code Modernization","System Migration","Lumen","REST API","MySQL"],"address":{"@type":"PostalAddress","addressLocality":"Wroclaw","addressRegion":"Lower Silesia","addressCountry":"PL"},"hasCredential":[{"@type":"EducationalOccupationalCredential","name":"Zend Framework: Advanced Course","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"Zend Framework: Fundamentals Course","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"MS: Programming in HTML5 with JavaScript and CSS3","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"MCTS: SQL Server 2008, Database Development","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"MCITP: Database Administrator 2008","credentialCategory":"certification"},{"@type":"EducationalOccupationalCredential","name":"MCTS: SQL Server 2008, Implementation and Maintenance","credentialCategory":"certification"}]}</script>
' "$file"

    echo "Done: $file"
}

# Main execution
echo "Starting SEO injection..."
inject_en
inject_pl
rm -f /tmp/meta_en.txt /tmp/meta_pl.txt
echo "SEO injection complete!"
