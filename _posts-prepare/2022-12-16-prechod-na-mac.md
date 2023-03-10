---
title: Přechod na Mac z pohledu programátora
layout: post
author: Kuba Andrýsek
date: '2022-12-16 14:00:00 +1'
category: MacBook
description: i3 WM nejen na Linuxu, balíčkovací systém Homebrew a široká plejáda programovacích jazyků 
media_folder: prechod-na-mac
thumbnail: virtualni-ukazka.jpg
head_photo: 
keywords: [macbook, linux, i3, homebrew]
---

# {{ page.title }}

## Z Linuxu na Mac
V předchozím článku jsem popisoval svoji cestu, během které jsem nejdříve modeloval a vyvíjel na systému Windows.
Poté jsem se přesunul na Linux, kde jsem se naučil pracovat s terminálem a využívat výhod balíčkovacího systému.
Také jsem si osahal několik grafických prostředí a nakonec jsem se usadil u i3 WM.
S Linuxem jsem měl však výrazné problémy, více o nich se rozepisuji v předchozím článku.

## Výběr MacBooku
Po finálním rozhodnutí migrace na Mac jsem začal hledat vhodný model.
Na výběr byly dvě architektury, Intel a Apple Silicon.
Sáhl jsem samozřejmě po tom novějším - Apple Silicon.
Ten je mnohem rychlejší a má také výrazně nižší spotřebu energie.
Už šlo jenom o to vybrat konkrétní model se správnnou konfigurací.
Notebook jsem si kupoval v dubnu 2022, kdy byl zatím v nabídce pouze MacBook Air s M1 chipem a relativně nově přidaný MacBook Pro s M1 chipem.
Druhý zmíněný u mě vyhrál díky většímu množství USB-C portů, integrovanému HDMI portu a 14" displeji.


## První seznámení
Prvním spuštění a registraci na iCloud jsem dělal přímo na Macu.
Dříve jsem byl vzyklý si k notebooku automaticky připojovat externí klávesnici a myš, ale tentokrát jsem to neudělal.
Výsledek byl fantastický, ačkoliv nemám touchpady moc rad, s tímto jsem se sžil velmi rychle.
Dopředu jsem již měl zjištěno, že žádný oficiální balíčkovací systém pro Mac neexistuje.
Naštěstí aktivní komunita spravuje alternativní správce balíku Homebrew, se kterým se pracuje velmi podobně jako s apt-getem na Linuxu.


## Homebrew
Jedna z prvních aplikací, kterou jsem si nainstaloval, byl iTerm2, následoval VS Code a můj oblíbený prohlížeč Opera.
Skrze Homebrew není problém také spravovat více verzí Pythonu, nebo PHP.


{% include image.html
url="brew-python.png"
%}{% include image.html
url="terminal-python.png"
%}

## Okna a pracovní plochy
Již z Linuxu jsem by zvyklý pracovat s několika virtuálními pracovními plochami.
človek si díky nim může rozdělit pracovní prostor na více částí jednoduše mezi nimi přepínat.
Práce s okny na Macu byla úplně diametrálně odlišná od té na Linuxu.
Aplikace se spouští do nedefinovaného prostoru, s různou velikostí.

Zvětšení aplikace na celou obrazovky je možné dvojitým poklepáním na okno, to roztáhne aplikaci na celou obrazovku.
Druhou variantou je takzaný "Full Screen" ten přesune okno aplikace za poslední virtuální pracovní plochu a zvětší ji na celou obrazovku.


## i3 na Macu
Ani jedna z dříve zmíněných metod zvětšení okna na celou obrazovku mi nevyhovovala.
Většinou jsem potřeboval pracovat s více aplikacemi současně a rychle je přehazovat mezi sebou.
Také je pro mě doležitá správa virtuálních pracovních ploch, na Linuxu jsem byl naučen kde mám prohlížeč, kde editor a kde multimédia.

Z i3 na Linuxu jsem byl zvyklý, že první spuštěná aplikace se zmenší na 1/2 a nově otevřená se automaticky spustí na druhé polovině obrazovky.
Pro přehozování oken, přesouvání mezi pracovními plochami a zvětšování na celou obrazovku existovaly klávesové zkratky.

Chvíli jsem zkoušel různé odchytávače a připínače oken, jako je Rectangle nebo Magnet, ale žádný z nich mi nevyhovoval.
Nakonec jsem skončil s nejpokročilejším komunitním nástrojem znvaým - [**yabai**](https://github.com/koekeishiya/yabai).

## yabai + skhd
**Yabai** je nástroj, který umožňuje spravovat virtuální pracovní plochy a okna na Macu.
Podporuje práci s více monitorama a je možné nastavit různé akce na klávesové zkratky.
Například přesunutí okna na jinou pracovní plochu, zvětšení na celou obrazovku, nebo přesunutí na jiný monitor.

**Skhd** je nástroj, který umožňuje nastavit klávesové zkratky, které jsou přiřazeny k akcím z yabai. 

## i3 + SketchyBar
Poslední fází k dokonalisti bylo najít alternativní status bar, který by uměl zobrazovat informace o virtuálních pracovních plochách a aktivních oknech.
První te


{% include github_button.html
url="https://github.com/JakubAndrysek/dotfiles-M1"
text="Dotfiles pro Mac M1"
%}

* https://sourabhbajaj.com/mac-setup/
* https://saurabhs.org/macos-tips
* https://github.com/artginzburg/sudo-touchid
* https://github.com/lima-vm/lima