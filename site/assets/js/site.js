// Jedyny JavaScript na stronie: zapis motywu i podświetlenie aktywnej sekcji.
(function () {
  var root = document.documentElement;
  var lang = (root.lang || 'pl').slice(0, 2);
  var labels = { pl: { dark: 'Ciemny', light: 'Jasny' }, en: { dark: 'Dark', light: 'Light' } };
  var L = labels[lang] || labels.pl;
  var btn = document.querySelector('.cv-theme');

  function current() {
    var set = root.getAttribute('data-theme');
    if (set === 'dark' || set === 'light') return set;
    return window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
  }
  function render() {
    var t = current();
    btn.textContent = t === 'dark' ? L.light : L.dark; // etykieta nazywa motyw, na który przełącza
    btn.setAttribute('aria-pressed', t === 'dark' ? 'true' : 'false');
  }
  if (btn) {
    btn.hidden = false;
    render();
    btn.addEventListener('click', function () {
      var next = current() === 'dark' ? 'light' : 'dark';
      root.setAttribute('data-theme', next);
      try { localStorage.setItem('theme', next); } catch (e) {}
      render();
    });
  }

  var links = Array.prototype.slice.call(document.querySelectorAll('.cv-nav a[href^="#"]'));
  var sections = links.map(function (a) { return document.getElementById(a.getAttribute('href').slice(1)); }).filter(Boolean);
  if ('IntersectionObserver' in window && sections.length) {
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (!entry.isIntersecting) return;
        links.forEach(function (a) {
          if (a.getAttribute('href') === '#' + entry.target.id) a.setAttribute('aria-current', 'true');
          else a.removeAttribute('aria-current');
        });
      });
    }, { rootMargin: '-40% 0px -55% 0px' });
    sections.forEach(function (s) { io.observe(s); });
  }
})();
