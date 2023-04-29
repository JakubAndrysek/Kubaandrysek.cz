---
title: Miniaturní laboratorní zdroj s podporou Power Delivery  
layout: post
author: Kuba Andrýsek
date: '2021-09-08 14:00:00 +1'
category: Elektro
description: Přenosný laboratorní zdroj s výstupním napětím až 30 V a proudem až 4 A
media_folder: pd-zdroj
thumbnail: thumbnail.jpg
head_photo:
keywords: [power-suply, powerbank]
lang: cs
---

# {{ page.title }}

Při domácím kutění potřebuji každou chvíli napájet různé elektronické součástky.
Většinou to jsou nějaké mikrokontroléry, kterým stačí nízké napětí a malý proud.
V takových případech se mi nechce vytahovat velký laboratorní zdroj.
Proto jsem vytvořil malý [Power Delivery](https://en.wikipedia.org/wiki/USB_hardware#USB_Power_Delivery) zdroj, ze kterého jsem schopen vytáhnout až 30V a 4A.

## Vstup

Aby se zdroj dal jednoduše napájet ze standardních USB C nabiječek, používám [USB-C PD Trigger Board](https://www.aliexpress.com/wholesale?SearchText=USB-C+PD+Trigger+Board+Module).
Mám verzi, která si na vstupu vyžádá 20 V, to v dnešní době podporují i některé power banky.

Druhou možností pro napájení je využít modelářskou baterku s konektorem XT60.

{% include image.html
url="conector.jpg"
%}{% include image.html
url="inside.jpg"
%}

## Výstup

Pro regulaci výstupu jsem koupil Buck Booster [ZK-4KX](https://www.aliexpress.com/wholesale?SearchText=zk-4kx).
Ten na vstupu bere napětí 5 - 30 V a na výstupu vytáhne 0 - 30 V.
Maximální výkon celého zařízení je 35W.
Pomocí potenciometru lze nastavit výstupní napětí a proud i různá omezení.

{% include image.html
url="front.jpg"
%}{% include image.html
url="side.jpg"
%}

## Krabička

Zdroj jsem umístil do krabičky, kterou jsem si navrhl a vyrobil na 3D tiskárně.
Model krabičky jsem nahrál na Printables

<iframe src="https://gmail246066.autodesk360.com/shares/public/SH9285eQTcf875d3c5395dba8c71c061a7f5?mode=embed" width="100%" height="500" allowfullscreen="true" webkitallowfullscreen="true" mozallowfullscreen="true"  frameborder="0"></iframe>

{% include image.html
url="box.jpg"
%}{% include image.html
url="box-side.jpg"
%}

{% include image.html
url="open.jpg"
%}{% include image.html
url="down.jpg"
%}

{% include button_generic.html
url="https://www.printables.com/cs/model/296168-power-delivery-mini-power-supply"
text="3D model krabičky"
icon="fas fa-box-open"
%}