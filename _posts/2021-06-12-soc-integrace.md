---
                                 #url se určuje podle názvu
title: Integrace do průmyslu 4.0
layout: post                     #layout|šablona
author: Kuba Andrýsek            #authos|autor
date: '2021-06-12 16:00:00 +1'   #date|datum vytvoření článku
category: IoT                #category|kategorie -> pro novou kategorii je potřeba vytvořit stránku v "categories"
description: Systém pro automatický monitoring průmyslové výroby              #Header|nadpis
media_folder: soc-integrace
thumbnail: main2.png
head_photo: head-t2.png
keywords: [soc, iot, rotexvysocina, esp32, ponozky, monitoring]
--- 

# SOČ Integrace do průmyslu 4.0

SOČ neboli středoškolská odborná činnost je celostátní soutěž odborných prací talentovaných studentů českých středních škol.

## Popis práce

Tato práce představuje ucelený systém pro automatický monitoring průmyslové výroby a jeho nasazení do praxe.
Systém byl navrhován jako univerzální platforma pro monitoring výrobních strojů, s primárním zaměřením na pletací stroje.


Cílem této práce bylo navrhnout ucelený systém, který dokáže:

* automaticky počítat upletené ponožky
* on-line hlásit poruchu na stroji a zjišťovat celkovou poruchovost strojů
* porovnávat výkonnost jednotlivých pracovních směn
* monitorovat průběh výroby
* nahradit část monotónní práce operátora
* zrychlit a zefektivnit výrobu
* snížit chybovost

Systém se skládá ze senzorové části, serveru a podpůrného serveru.
Senzorová část je postavená na vlastní senzorové desce s mikrokontrolérem s barevným displejem. Senzor je připojen k pletacímu stroji a odesílá naměřená data.
Server přijímá  data ze senzorů, zajišťuje jejich zpracování a následné zobrazení uživateli.
Podpůrný server se stará o aktualizaci a o kontrolu správného chodu senzorů.

Systém byl navrhován jako univerzální platforma pro monitoring výrobních strojů s primárním zaměřením na pletací stroje. 
Samotné nasazení tohoto systému proběhlo ve firmě ROTEX Vysočina s.r.o. zaměřující se na pletení ponožek. 
Ve firmě jsem nasadil senzory na 10 pletacích strojů, které zde běží již 6 měsíců. 
Za tuto dobu systém zaznamenal přes sto padesát tisíc upletených ponožek.
Tento systém ve firmě ROTEX monitoruje počet upletených ponožek, dobu stání jednotlivých strojů, ale také porovnává jednotlivé pracovní směny.


{% include image.html
url="pletarna.png"
%}

## Úvod

Práce s názvem Integrace do průmyslu 4.0 se zabývá návrhem monitorovacího systému pro výrobní stroje a jeho nasazením ve firmě ROTEX Vysočina s.r.o. Tato firma se věnuje výrobě ponožek. Pracuje ve dvousměnném provozu a produkuje měsíčně přes dvanáct tisíc párů ponožek.

Ve firmě je 25 pletacích strojů na ponožky, o které se v každé směně starají tři operátoři.
Samotná práce operátora spočívá v kontrole upletených vzorků, otáčení dopletených ponožek a opravách porouchaných strojů.

Systém je interně pojmenován Pletačka IoT.
Jeho úkolem je monitoring počtu upletených ponožek, zaznamenávání doby zastavení jednotlivých strojů, porovnávání jednotlivých směn, ale také podání přehledu zaměstnavateli o aktuální produkci.

Dříve firma neměla žádná data o době pletení, denní  produkci, nebo čase zapnutí strojů.
To vše  můj systém řeší  a nabízí jednoduché, uživatelsky přívětivé rozhraní, kde si uživatel všechny tyto údaje přehledně zobrazí v grafech a v tabulkách.

{% include image.html
url="V2-uchyceni.png"
%}
{% include image.html
url="oba.png"
%}

## Senzory

Pletací stroje na ponožky jsou starší zařízení bez podpory připojení k internetu.
Pro měření jsem tedy musel vyvinout vlastní  senzory, které získávají data z elektrických součástek na pletacích  strojích a skrze WiFi připojení je posílají  na server.
Senzory Pletačka IoT jsem navrhoval tak, aby se daly jednoduše připojit na stávající pletací stroje a napojit je tak do centrálního řídícího systému.
Dalším požadavkem senzoru bylo, aby neohrožoval chod samotného stroje, pokud není můj systém aktivní, nemá to žádný vliv na zbylý chod firmy.

Senzory jsou postavené na mikrokontroléru ESP32, který nabízí dostatečný výkon a má bezdrátovou konektivitu WiFi.
Každý z těchto senzorů má svoje jedinečné číslo, pod kterým posílá naměřená data na server.
Senzor je napájen z 5 nebo 24 V a má spotřebu 120 mA.



Na každém senzoru jsou dva optočleny napojené na indikační diody pletacího stroje.
Z jedné diody se snímá zastavení stroje pro výpočet poruchového času a z druhé senzor získává počet upletených ponožek.
Na těchto dvou údajích je postavený celý měřící a výpočetní systém.
Dále senzor obsahuje dvě uživatelská tlačítka sloužící pro nastavení jedinečného ID senzoru.
Pro rychlé grafické znázornění jsou na desce také dvě barevné diody.

Hlavní vizuální roli zajišťuje LCD displej, na kterém se operátorům zobrazují základní údaje o stroji.
Ve vrchní části jsou vypsány údaje o bezdrátovém připojení a číslo senzoru.
Uprostřed se operátorovi velkým písmem zobrazuje počet upletených ponožek a v případně zastavení stroje čas odstávky.
Tyto údaje se na každém stroji výrazně vykreslují a upozorňují tak obsluhu k brzké opravě.
Poslední novinku, kterou jsem na senzory doprogramoval je zobrazování průměrné rychlosti pletení ponožek za hodinu.
S takovýmto typem rychlosti se každodenně setkáváme například v autě a operátor z ní dokáže rychle dopočítat čas dopletení zakázky.

Pro upevnění senzoru jsem vytvořil kompaktní 3D tištěnou krabičku.
Tu jsem navrhoval v programu Fusion 360 a následně jsem ji vytiskl na 3D tiskárně.


## Webový server

Nedílnou součástí tohoto systému je také serverová část, která se stará o přijímání naměřených dat, jejich zpracování a následné zobrazení uživateli.
Samotný server běží na mikropočítači Raspberry Pi 4 Modelu B.

Na zařízení běží operační systém Raspberry Pi OS s grafickým rozhraním.
Webové stránky běží na HTTP serveru Apache2 a PHP 8.0.
Jako databázový systém využívám MariaDB.
Server běží lokálně uvnitř firmy v zabezpečené síti, díky čemuž je systém rychlý a nezávislý na internetovém připojení.

Na webový server se dá jednoduše připojit otevřením lokálního firemního odkazu \newline\href{http://pletacka.local}{pletacka.local}.
Poté se uživateli zobrazí úvodní přehledová stránka s barevnými bublinami, které představují jednotlivé pletací stroje.
Jejich barva pak udává v jakém stavu se stroj aktuálně nachází. Uživatel tak dokáže velmi rychle zjistit aktuální funkčnost pletacích strojů bez nutnosti návštěvy pletárny.
Kromě barvy se v bublině zobrazuje také text, ten ukazuje počet upletených ponožek a v případě zastavení stroje a zčervenání se text změní na dobu zastavení stroje.

{% include image.html
url="Uvod.png"
%}

Další webovou stránkou jsou Přehledy ze senzorů generované pro každý pletací stroj.
Zde se uživateli zobrazují data v různých časových přehledech.
Pro snadné porovnání dat mezi dvěma směnami se tyto údaje zobrazují vedle sebe.
Pod číselnými přehledy jsou pak předgenerované dlouhodobé grafy viz obrázek \ref{fig:webSenzory}.

Každý senzor využívá pět databázových tabulek. První slouží k ukládání surových dat, do zbylých tabulek se pak ukládají automaticky generované přehledy.
Ty slouží k rychlému vykreslení grafů a výpočtu dlouhodobých údajů.
Senzor zaznamená dopletenou ponožku a skrze REST API posílá naměřený údaj na webový server, ten ji zkontroluje a uloží do databáze ke konkrétnímu senzoru.
Každý databázový záznam obsahuje číslo stroje, unikátní ID události, naměřený stav a čas události.

{% include image.html
url="prehled.png"
%}

## Podpůrný server

Podpůrný server vznikl jako rozšíření pro senzory.
Server je naprogramovaný v Pythonu a běží na Raspberry Pi společně s webovým serverem.\newline

Hlavním úkolem tohoto serveru je detekce zapnutých senzorů.
Na serveru běží takzvaný Watchdog.
Jde o periodickou smyčku, která každé čtyři vteřiny čeká na zprávu ze senzoru.
Touto zprávou se senzor nahlásí, že je zapnutý. Pokud takováto zpráva nedojde do deseti vteřin, je senzor prohlášen za vypnutý a v databázi se označí jako neaktivní.

## Princip fungování Pletačka IoT

V předchozích kapitolách byly popsány části systému Pletačka IoT.
V této kapitole bude celý systém popsán jako celek.

První, a zároveň nejdůležitější částí, je získávání dat pomocí senzorů.
Jakmile senzor zaznamená jakoukoliv změnu, okamžitě tuto zprávu odesílá na server.
Odesílání probíhá skrze senzorové API, kde se nejdříve senzor ověří a následně se stav zapíše do databáze k příslušnému senzoru.
Po zapsání do databáze se vrátí do senzoru zpráva o provedení zápisu.

Dalším krokem je zpracovávání surových dat z databáze.
K tomuto účelu běží na serveru výběrové API, které je automaticky spouštěné v nastavený čas.
Slouží ke generování širších výběrů dat, hodinové, denní, měsíční a roční výběry.
Tyto výběry se následně ukládají do databáze k danému senzoru.
Generování těchto dat probíhá převážně v noci, kdy je server nejméně vytížen.

Posledním krokem je zobrazení dat uživateli.
Je to jediná část, se kterou se běžný uživatel dostane do kontaktu.
Proto je nutné, aby zobrazení bylo co nejrychlejší a pro uživatele co nejpříjemnější.
K rychlému zobrazování se využívají před generované výběry, ke kterým se dopočítají dosud nezpracovaná data a celý výsledek se zobrazí uživateli.

{% include image.html
url="Princip.png"
%}

## Testování

Celý systém jsem vyvíjel od února 2020. První malé testy probíhaly již od května 2020, ale k většímu nasazení došlo až v září a listopadu 2020.
Od té doby je systém ve firmě nasazen a průběžně probíhá kontrola měření a funkčnosti.


## Závěr

Cíle této práce byly splněny. Ze starých, ale výrobně funkčních stojů, se díky mému systému staly moderní online stroje.
Systém zefektivnil výrobu, šetří čas operátora, nahrazuje rutinní úkony vykonávané doposud operátorem a přináší detailní přehled o výrobě včetně vzájemného porovnání výrobních směn.
System Pletačka IoT tak snižuje výrobní náklady při výrobě a to jednak v podobě minimalizace prostojů stroje při poruše, tak ušetřením času operátora při výrobě.

Všechny tyto vytyčené cíle se mi podařilo splnit.
Systém nadále běží ve firmě ROTEX Vysočina s.r.o a pomáhá v běžném provozu.
Můj systém se stal nedílnou součástí výrobního procesu a analyzuje a zefektivňuje průběh výroby.

Systém je k 20. červnu 2021 nasazen na deseti pletacích strojích a po dobu provozu zaznamenal již přes sto padesát tisíc upletených ponožek bez závady na senzorech.

Velkým přínosem pro firmu je porovnávání pracovních směn, díky kterým zaměstnavatel ihned vidí rozdíly mezi produktivitou práce v daném čase.

Díky této práci jsem se naučil navrhovat plošné spoje, rozšířil jsem si obzory v elektronice a při vývoji jsem si vyzkoušel práci s měřícími přístroji.
Také jsem se naučil programovat v jazyce PHP a vytvářet komplexní webové systémy.

V budoucnu bych chtěl tento systém rozšířit na všechny pletací stroje a pokrýt tak celou výrobu.
Taktéž pokračuji na vylepšování webové aplikace a plánuji ji rozšířit o další funkce, například o export dat do tabulek.

Všechny zdrojové kódy a DPS k projektu jsou k dispozici na [github.com/Pletacka-IoT]([https://link](https://github.com/Pletacka-IoT)) pod MIT licencí.
