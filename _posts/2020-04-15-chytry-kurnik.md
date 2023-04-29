---
title: Chytrý kurník #title|název článku   
layout: post                     #layout|šablona
author: Kuba Andrýsek            #authos|autor
date: '2020-04-15 14:00:00 +1'   #date|datum vytvoření článku
category: IoT               #category|kategorie -> pro novou kategorii je potřeba vytvořit stránku v "categories"
description: Chytrý kurník, aneb automatizace celého kurníku              #Header|nadpis
media_folder: chytry-kurnik
thumbnail: main.jpg              #thumbnail|titulní foto -> cesta "/img/blog/**nazev-clanku/Kolo.png**"
head_photo: small-main.jpg              #vrchni fotka  -> cesta "/img/blog/**nazev-clanku/Kolo.png**"
keywords: [kurník, slepice, ESP32, WiFi, RTC, web]		#Kcicova slova
lang: cs
---

# Chytrý kurník, aneb už máme WiFi i v kurníku

Doba se nám mění, a tak se snažíme mnoho věcí si zjednodušovat a automatizovat. 
Z tohoto důvodu jsem navrhl a vytvořil Chytrý kurník.
Jedná se o kurník s automatickým otevíráním a zavíráním dvířek v přednastavený čas.
Součástí kurníku je také automatické pítko a krmítko které jsme sem zakoupili. 
Díky tomuto vybavení se stává kurník z velké části autonomní.

## Automatická dvířka

### Konstrukce
Do kovové konstrukce dvířek je vložen 12V motorek z auta, který zajišťuje otevíraní a zavíraní dvířek.

{% include image.html
url="system.jpg"
%}
{% include image.html
url="door.jpg"
%}

#### Elektro
Kurník je řízen pomocí modulu ESP32 a dvoukanálového relé, které je napojeno na motor dvířek. Aktuální čas je získáván z RTC modulu (DS3231). Dále využívám stepdown (LM2596) který snižuje napětí z 12V na 5V. Celá elektronka je napájena z 12V zdroje.

{% include image.html
url="elektro1.jpg"
%}
{% include image.html
url="elektro2.jpg"
%}

#### Souhrn součástek
- modul ESP32
- 2 kanálové relé
- RTC modul (DS3231)
- stepdown (LM2596)
- 2 tlačítka
- napájecí zdroj 12V

#### Program
Důvod, proč jsem zvolil modul ESP32 je v podpoře WiFi, kterou využívám k nastavování času a řízení vrátek. Na ESPčku tedy běží webový server, na který se mohu pomocí telefonu připojit a jednoduše měnit nastavení. Zbytek programu je pouze o kontrole času a následném přepínaní stavů relé. Kromě automatického řízení je také možnost řídit dvířka manuálně pomocí dvou tlačítek.


{% include image.html
url="www-crop.png"
%}

{% include github_button.html 
url="https://github.com/JakubAndrysek/Chytry-kurnik" 
text="Zdrojový kód"
%}

