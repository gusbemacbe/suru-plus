<p align="center">
    <img src="images/logo-new.png" alt="Logotype" height="250px">
</p>

<h3 align="center">A third-party Suru icons for more than 20 distributions </h3>
<h3 align="center">Successor of <a href="https://github.com/Magog64">@Magog64</a>’s <a href="https://github.com/Magog64/SURU-PLUS">Suru++ Ubuntu</a></h3>
<h3 align="center">A cyberpunkish, elegant, futuristic, macOS-like, papirusified and modern Suru icons based on <a href="https://snwh.org/suru">Suru Icons</a> by Sam Hewitt</h3>

<p align="center">
  <img alt="apps" src="https://img.shields.io/badge/apps_icons-5200%2B-1AD6AB.svg?style=plastic?&colorA=329DB6"/>
  <img alt="actions" src="https://img.shields.io/badge/actions_icons-1800%2B-1AD6AB.svg?style=plastic?&colorA=329DB6"/>
  <img alt="devices" src="https://img.shields.io/badge/devices_icons-150%2B-1AD6AB.svg?style=plastic?&colorA=329DB6"/>
  <img alt="mimetypes" src="https://img.shields.io/badge/mimetypes_icons-1100%2B-1AD6AB.svg?style=plastic?&colorA=329DB6"/>
  <img alt="panel" src="https://img.shields.io/badge/panel_icons-1900%2B-1AD6AB.svg?style=plastic?&colorA=329DB6"/>
  <img alt="places" src="https://img.shields.io/badge/places_icons-1300%2B-1AD6AB.svg?style=plastic?&colorA=329DB6"/>
</p>

<h1>Index</h1>

- [What’s new?](#whats-new)
  - [Version 25.0.0](#version-2500)
- [Installing with CLI](#installing-with-cli)
- [Changing the folder colour](#changing-the-folder-colour)
- [Known bugs](#known-bugs)
  - [This icon theme do not apply correctly the apps icons](#this-icon-theme-do-not-apply-correctly-the-apps-icons)
  - [Some icons are not applied correctly and look bad in KDE](#some-icons-are-not-applied-correctly-and-look-bad-in-kde)
- [Report](#report)
- [Contribution](#contribution)
- [Contributors](#contributors)
- [Changelog](#changelog)
- [Credits and Licences](#credits-and-licences)

## What’s new?

1. Following Sam Hewitt’s rules of grids, and making less conservative and traditional <a href="https://github.com/Magog64">@Magog64</a>’s <a href="https://github.com/Magog64/SURU-PLUS">Suru++ Ubuntu</a>, more than 15k icons have been redesigned, papirusified and improved with new cyberpunk colours and made been compatible with KDE, XFCE and other many environments! Check the new icons:

![Screenshot](images/preview1-new.png)

2. The new versions has won new colours of folders, based by Alexey Varfolomeev’s Papirus:

![Screenshot](images/preview2.png)

3. Almost all mimetype icons have been redesigned with new colours and are based on Numix mimetype icons:

![Screenshot](images/preview3.png)

4. You can choose one of three alternatives of Firefox:

| ![](images/firefox-traditional.png) | ![](images/firefox.png) | ![](images/firefox-mozilla.png) |
| :---------------------------------: | :---------------------: | :-----------------------------: |
| Traditional                         | Suru++ 20               | Mozilla Unofficial              |
| `firefox-traditional.svg`           | `firefox.svg`           | `firefox-mozilla.svg`           |

**How to change the alternative of these?**

1. Go to `/usr/share/applications/`;
2. Go to the desktop file `Firefox`;
3. Open the file with your favourite text editor;
4. Find `Icon=...` and modify it with one of three alternatives: `Icon=firefox` or `Icon=firefox-mozilla` or `Icon=firefox-traditional`. Save it.

5. New countries flags (in development)!

### Version 25.0.0

* Suru++ won the new folders with colour of Linux Mint:

![Screenshot](images/preview4.png)

* The file managers are no longer same, now are different and modern:

<p align="center">
    <img src="images/preview5.png" alt="Screenshot" height="100px">
</p>

* Hundreds Steam games icons are supported officially:

<p align="center">
    <img src="images/preview6.png" alt="Screenshot" height="450px">
</p>

## Installing with CLI

Use the scripts to install the latest version directly from this repo (independently of your distro):

**NOTE:** Use the same command to update the icon theme.

#### ROOT directory (recommended)

```
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus/master/install.sh | sh
```

#### HOME directory for GTK

```
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus/master/install.sh | env DESTDIR="$HOME/.icons" sh
```

#### HOME directory for KDE

```
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus/master/install.sh | env DESTDIR="$HOME/.local/share/icons" sh
```

#### \*BSD systems

```
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus/master/install.sh | env DESTDIR="/usr/local/share/icons" sh
```

#### Uninstall

```
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus/master/install.sh | env uninstall=true sh
```

## Changing the folder colour

Please visit directly the tutorial: [Suru++ Folders](https://github.com/gusbemacbe/suru-plus-folders). The tutorial is translated in 7 languages.

## Known bugs

### This icon theme do not apply correctly the apps icons

Some apps, as AppImage-built and Snap-built apps are hardcoded and do not use relative path or relative icon. They use absolute path. Other apps use misleading icon name, for example, old version of GitHub Desktop uses the `Icon=desktop`.

### Some icons are not applied correctly and look bad in KDE

Since this new version is officially supported for KDE, please report the misdisplayed icon to me that I will analyse and fix.

## Report

* Do you find the missed icons?
* Do you find the misused icons?
* Did you find the errors?

Report, but please provide well-detailed information. Or I will have difficulty to understand what you are saying or to know which app you are referring.

## Contribution

* Would you like to improve our repository?
* Do you want to add and request the icons? Make a pull request and we will analyse and approve or not.

## Contributors

The contributors is on the file [AUTHORS](AUTHORS).

## Changelog

The changelog is available on the release page in theme's repository.

## Credits and Licences

* CC BY-SA/GPL3 © 2018 Suru Icons by Sam Hewitt.
* GPL3 © 2018 Suru++ Ubuntu by Andrea Bonanni and Gustavo Costa.
* GPL3 © 2018 Suru++ 20 by Gustavo Costa.
* GPL3 © Papirus by Alexey Varfolomeev.
* GPL3 © Numix by Numix Team.
* GPL3/MIT © 2015-2017 La Capitaine by [Keefer Rourke](mail@krourke.org).
* MIT © Icons 8 by Gravit Designer.
* MIT © Twemoji by Twitter Team.
