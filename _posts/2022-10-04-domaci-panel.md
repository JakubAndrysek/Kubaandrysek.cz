---
title: E-paper domácí panel
layout: post
author: Kuba Andrýsek
date: '2022-10-04 18:00:00 +1'
category: Programování
description: Domácí panel s informacemi o počasí, jízdních řádech...
media_folder: domaci-panel
thumbnail: virtualni-ukazka.jpg
head_photo: 
keywords: [e-paper, domaci-panel, skola-online, esp32, c++, python, server, api, jizdni-rady, predpoved-pocasi, alojz]
---

# {{ page.title }}

Cílem tohoto projektu je navrhnout a vytvořit univerzální domácí panel.
Hlavním úkolem tohoto panelu je zobrazovat aktuální odjezdy městské hromadné dopravy.
Díky bezdrátovému připojení na WiFi a komunikací se zpracujícím servery je displej schopen zobrazit jakékoliv údaje.



Součásti systému:

- [odjezdy MHD - Brno](https://jakubandrysek.github.io/E-paper-board-ESP32/aplikace/mhd)
- [nejnovější známky ze školy](https://jakubandrysek.github.io/E-paper-board-ESP32/aplikace/sol-znamky)
- [předpověď počasí Alojz](https://jakubandrysek.github.io/E-paper-board-ESP32/aplikace/alojz)
- [využití strojů ve FabLabu](https://jakubandrysek.github.io/E-paper-board-ESP32/aplikace/fablab)
- [aktuální školní rozvrh](https://jakubandrysek.github.io/E-paper-board-ESP32/aplikace/sol-rozvrh)
- …


## Základní informace

Domácí panel je postaven na modulu [LilyGo-T5-Epaper](https://github.com/Xinyuan-LilyGO/LilyGo-T5-Epaper-Series), který tvoří velmi významnou kombinaci mezi výkonným mikrokontrolérem ESP32 a tříbarevným E-paper displejem.

{% include image.html
url="appAlojz.png"
%}{% include image.html
url="ttgo-back.png"
%}

## Aplikace

Cílem projektu je navrhnout a&nbsp;vyrobit univerzální domácí panel, který zajistí přehledné a&nbsp;rychlé zobrazování každodenních informací.

### Co to má umět

Řídící systém displeje by měl být univerzální a&nbsp;zvládat zobrazit jakákoliv data ve formátu JSON. Tento formát jsem zvolil, protože je velmi rozšířený a&nbsp;několik z&nbsp;požadovaných služeb již toto rozhraní nabízí.

Pro zbylé webové aplikace, které nedisponují veřejným API ve formátu JSON bude nutné navrhnout malý server, který bude data z&nbsp;webů zpracovávat a&nbsp;zprostředkovávat je v&nbsp;použitelném formátu JSON.

{% include image.html
url="alojzApp.jpeg"
%}{% include image.html
url="fablabApp.jpeg"
%}

## Aplikace

{% include image-w.html
url="Apps-hierarchy.drawio.png"
%}


### 1. Odjezdy MHD

Hlavním modulem a&nbsp;prvotním nápadem na vytvoření tohoto projektu je aplikace na zobrazování odjezdů MHD. 
V&nbsp;mém případě konkrétně v&nbsp;Brně - Jihomoravském kraji. 
Tento modul vytvářím ve spolupráci s&nbsp;[IDSJMK](https://idsjmk.cz/). 
Díky čemuž jsem získal neomezený přístup k&nbsp;veřejnému API na webu [https://mapa.idsjmk.cz](https://mapa.idsjmk.cz/).

{% include image.html
url="mhd-web.png"
%}{% include image.html
url="salinaApp.jpg"
%}

### 2. FabLab now

Tento modul zobrazuje využití strojů ve [FabLabu](https://www.fablabbrno.cz/).

FabLab Brno je otevřená digitální dílna v&nbsp;Brně, ve které je možné pracovat například s&nbsp;3D tiskárnami, laserem, nebo s&nbsp;obráběcím strojem.
Stroje jsou přístupné na uživatelské karty a&nbsp;během dne bývají vcelku vytížené, proto Core team FabLabu vytvořil web [FabLab now](https://now.fablabbrno.cz/), který zobrazuje obsazenost FabLabu a&nbsp;konkrétních strojů.


### 3. Posledí přidané známky

Naše škola využívá velmi rozšířený informační systém [Škola Online](https://www.skolaonline.cz/).
Pro přístup do tohoto systému je možné využít standardní webové rozhraní nebo vcelku pomalou mobilní aplikaci.

Tato aplikace zajišťuje zobrazování nejnovějších známek ze školních systému.
Jelikož ESP32 nezvládá přímou komunikaci s&nbsp;informačním systémem, stojí mezi nimi pythonní wrapper - aplikace, která získá data ze školního systému a&nbsp;vrátí JSON, který obsahuje pouze nejnutnější data.

### 4. Předpověď počasí Alojz

Mezi další moduly patří moje oblíbená webová stránka [Alojz.cz](https://alojz.cz/brno) od českého programátora [Filipa Hráčka](https://filiph.net/).
Web Alojz získává data o&nbsp;počasí z&nbsp;norského webu [Yr.no](https://www.yr.no/) a&nbsp;pomocí umělé inteligence je transformuje do českých vět. 
Pro tento web bude nutné navrhnout webový parser na formát JSON.


{% include image.html
url="sol-znamky-big.jpg"
%}{% include image.html
url="solApp.jpg"
%}


{% include github_button.html
url="https://jakubandrysek.github.io/E-paper-board-ESP32/"
text="Více o projektu"
%}