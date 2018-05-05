<p align="center"> 
<img src="Title.png" alt="Title">
</p>

<h3 align="center">A third-party Suru icons for Ubuntu 18.04</h3>

<h3 align="center">An elegant, modern and sweet Suru icons based on <a href="https://snwh.org/suru">Suru Icons</a> by Sam Hewitt</h3>

![Screenshot](screenshot.png)

## Installation

Firstly, you must have `git` and `svn` installed. 

```shell
sudo apt install curl git subsversion wget
```

**For users of Ubuntu 16.04 and below:**

You need to install Sam Hewitt's Suru icons:

```shell
svn export https://github.com/snwh/suru-icon-theme/trunk/ ~/.local/share/icons/Suru
```

There aree three options you can choose and prefer:

### Git

Install...

```shell
$ cd ~/.local/share/icons/
```

Download with...

```shell
$ git clone https://github.com/Magog64/SURU-PLUS.git
```

or quickly like a Millennium Falcom ...

### SVN 

```shell
$ svn export https://github.com/Magog64/SURU-PLUS/trunk/ ~/.local/sahre/icons/Suru++
```

As we update the icons, and if you need to update the icons, you need to add `--force` to overwrite something new.

```shell
$ svn export --force https://github.com/Magog64/SURU-PLUS/trunk/ ~/.local/sahre/icons/Suru++
```

### PPA (Ubuntu and Debian-derived)

Soon...

## Bugs and reports

### CrossFTP, Github Desktop, Gravit Designer and Mozc Setup are not well displayed

It is not the pack's problem. It is the desktop files problem because they used the relative path of an icon, put the strange icon names and use the PNG format instead. Therefore it is important to copy the desktop files to the local of your home folder for preventing the icons from being changed because in the next updates, Ubuntu and PPAs can modify always the desktop files. Follow the instructions:

1. Run the command via terminal:

```shell
sudo nautilus /usr/share/applications/
```

2. Copy the desktop files of CrossFTP, Github Desktop and Mozc Setup and paste on `yourname/.local/share/applications`.

3. Open them with Text Editor and modify the icon paths:

#### CrossFTP
* `Icon=/usr/share/crossftp/logo_big.png` to `Icon=crossftp`

#### Github Desktop
* `Icon=desktop` to `Icon=github`

#### Mozc Setup
* `Icon=/usr/share/icons/mozc/ime_product_icon_opensource-32.png` to `Icon=ime_product_icon_opensource-32`

#### Gravit Deisgner

If you snapped Gravit Designer, 

Run the command via terminal:

```shell
sudo nautilus /var/lib/snapd/desktop/applications/
```

Copy the `gravit-designer_gravit-designer.desktop` to `yourname/.local/share/applications/`

Open this deskto file and modify to `Icon=gravit`.

We recommend you to back your files up when you intend to make a clean install or reinstall your distribution.

* Do you find the missed icons?
* Do you find the misused icons?
* Did you find the errors?

Report, but please provide well-detailed informations:

* Distribution and verison
* Setps to reproduce
* Expected behavior
* Actual behavior
* Description
* Missed icons
  * Apps names
  * Missed icon names from the desktop files of `/usr/share/applications` and `yourname/.local/share/applications/`):
  * Screenshots
* Additional information

## Contribution

* Would you like to improve our repository?
* Do you want to add and request the icons? Make a pull request and we will analyse and approve or not

## Contributors

The contributors is on the file AUTHORS

## Changelog

The changelog is available on the release page in theme's repository.

## License

LGPL (c) Suru++