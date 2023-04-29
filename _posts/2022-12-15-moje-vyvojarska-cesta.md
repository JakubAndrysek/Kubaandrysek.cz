---
title: Moje vývojářská cesta
layout: post
author: Kuba Andrýsek
date: '2022-12-15 13:00:00 +1'
category: MacBook
description: Od Windows přes různé distribuce Linuxu až po vývoj na Macu
media_folder: moje-vyvojarska-cesta
thumbnail: moje-vyvojarska-cesta.jpg
head_photo:
keywords: [macbook, linux, i3, homebrew]
lang: cs
---

# {{ page.title }}


## Windows
Od malička jsem vyrostl na operačním systému Windows od společnosti Microsoft.
Jelikož jsem se primárně věnoval 3D modelování a 3D grafice, byl pro mě tento systém ideální.
Aplikace jako SolidWorks a Fusion 360 zde měly nativní podporu a byly velmi rychlé.
Další nástroje jako InkScape, Gimp a Adobe Photoshop byly také dostupné.

## Linux - Kubuntu
V roce 2020 jsem si pořídil ThinkPad E15 a rozhodl jsem se na něm rozjet dual-boot.
Tedy provozovat Windows a Linux současně na jednom počítači.
Touto dobou jsem také začínal pracovat na své [středoškolské odborně činnosti]({{ site.baseurl }}{% post_url 2021-06-12-soc-integrace %}) a potřeboval jsem vyvíjet software pro mikrokontroléry, webové aplikace a další přidružené nástroje.
Prvotní nástup nebyl jednoduchý, člověk musí nakonfigurovat kompletní vývojový server a to pro úplného nováčka není jednoduché.
S tímto prvotním problémem jsem se však popral a naučil se s Linuxem pracovat na denní bázi.

Kariéru 3D designéra jsem postupně skončil a začal se věnovat programování.
To mi také umožnilo odpoutat se od systému Windows úplně a začít pracovat pouze na Linuxu.
Člověk s touto platformou má obrovskou volnost, která je v některých ohledech úžasná, ale mnohdy také velmi nepříjemná.

Základní distribuce KDE Neon postavená na Ubuntu nabízela všechny potřebné nástroje a umožnila mi celkem bezproblémový přechod na Linux.
Většina nástrojů se dala používat skrze terminál, ale také prostřednictvím výborného grafického prostředí KDE.

## Linux - i3 WM
Po roce používání jsem přemýšlel o další změně.
Tentokrát šlo pouze o změnu grafického prostředí.
Jakožto student rád zkouším nové věci, a tak jsem na svůj notebook přidal grafické prostředí i3.
Toto prostředí je velmi minimalistické a je určeno pro ty, kteří chtějí pracovat s počítačem co nejefektivněji.
Více o tomto prostředí si můžete přečíst na [oficiální stránce](https://i3wm.org/).
Pro jednoduchou start jsem využil projekt [Regolith Desktop Environment](https://regolith-desktop.com/), který i3 WM přidává výchozí konfiguraci a několik užitečných nástrojů.

## Linux - Problémy
Po několika celkem bezproblémových měsících používání mi začal počítač po náhodném čase zamrzat.
Zkoušel jsem aktualizovat systém, kompletně zakázat externí grafickou kartu, ale nic z toho nepomohlo.
Zasekávání celého systému, kterému pomohlo pouze "tvrdé zabítí" počítače, bylo velmi nedeterministické a nebylo možné předvídat, kdy k dalšímu záseku dojde.
Problém jsem zkoušel řešit i přeinstalací systému, ale to také nepomohlo.

## Linux → Mac
Po mnoha desítkách hodin strávených snahou o vyřešení problému jsem začal hledat alternativu.
Jedna z variant byla, pořízení jiného notebooku, na kterém bych mohl snad Linux používat bez problémů.
Druhá z varianta, která mě lákala ještě víc, byla přechod na MacBook.

## Mac
Více o přechodu na Mac v samostatném článku který právě připravuji.

{% include button_generic.html
url="/equipment/laptop/linux/"
text="Původní setup s Linuxem"
%}