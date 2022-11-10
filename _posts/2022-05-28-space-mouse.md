---
title: Python knihovna pro práci s 3D myší SpaceMouse 
layout: post
author: Kuba Andrýsek
date: '2022-05-28 14:00:00 +1'
category: Programování
description: SpaceMouse Dof6 knihovna pro řízení robotů
media_folder: space-mouse
thumbnail: Mouse-robot.jpg
head_photo: ""
keywords: [space-mouse, python, mouse, 3d-mouse]
---

# {{ page.title }}

Ovládání robotů není jednoduché, většinou se mohou pohybovat a hýbat mnoho osami. 
To se standardní herní konzolí ovládá celkem špatně, nemluvě pak o klávesnici. 
Proto jsem vytvořil multiplatformní knihovnu pro práci s 3D myší, která podporuje 6 os pohybu a disponuje několika tlačítky.

{% include image-w.html
url="Mouse-robot.jpg"
%}

## Čtení dat z myši
Pro komunikaci mezi knihovnou a myší je použit protokol [`HID`](https://en.wikipedia.org/wiki/Human_interface_device).
Moje knihovna zprcovává raw data z myši pomocí knihovny [`hidapi`](https://github.com/libusb/hidapi) ke které z Pythonu přistupuji skrze multiplatformní knihovnu [`easyhid`](https://github.com/bglopez/python-easyhid).
Díky tomu není nutné mít nainstalovaný originální software od firmy 3DConnexion (3DxWare).

## Podporované myši
* SpaceNavigator
* SpaceMouse Pro
* SpaceMouse Pro Wireless
* SpaceMouse Wireless
* 3Dconnexion Universal Receiver
* SpaceMouse Compact
* SpacePilot
* SpacePilot Pro
* [Pro přidání nové myši koukni zde](https://github.com/johnhw/pyspacenavigator/issues/1)

## Instalace

[![PyPI version](https://badge.fury.io/py/pyspacemouse.svg)](https://badge.fury.io/py/pyspacemouse)

`pip install pyspacemouse`

Kompletní návod k instalaci je na [GitHubu](https://github.com/JakubAndrysek/pyspacemouse#installation).

## Ukázka použití
Ukázka `basicExample.py` je dostupná na [GitHubu](https://github.com/JakubAndrysek/pyspacemouse/blob/master/examples/basicExample.py).
```python
import pyspacemouse
import time

success = pyspacemouse.open()
if success:
    while 1:
        state = pyspacemouse.read()
        print(state.x, state.y, state.z)
        time.sleep(0.01)
```

{% include github_button.html
url="https://github.com/JakubAndrysek/pyspacemouse"
text="Zdrojové kódy a další informace"
%}