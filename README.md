<p align="center"> 
<img src="Title.svg" alt="Title">
</p>

<h3 align="center">A third-party Suru icons for Ubuntu 18.04</h3>

<h3 align="center">An elegant, modern and sweet Suru icons based on <a href="https://snwh.org/suru">Suru Icons</a> by Sam Hewitt</h3>

![Screenshot](screenshot.png)

## Installation

### Installation without CLI

If you are a user of before 16.04 or of among 16.04 and 17.10 and any Debian-derived distros: 

1. Then you must download and install firstly [Suru Icons](https://github.com/snwh/suru-icon-theme/) by Sam Hewitt;
2. Unzip this zipped file and move the folder "Suru" to `your_name/.icons/` (16.04 and below) or `your_name/.local/share/icons/` (16.04.4 and above);
3. Now download Suru++ and unzip this zipped file and move the folder "Suru-Plus" to `your_name/.icons/` (16.04 and below) or `your_name/.local/share/icons/` (16.04.4 and above);
4. Apply "Suru-Plus", using Tweak Tool.

If you are a user of 18.04: 

1. Ubuntu 18.04 comes already with Suru icons installed;
2. Download Suru++ and unzip this zipped file and move the folder "Suru-Plus" to `your_name/.local/share/icons/`;
3. Apply "Suru-Plus", using Tweak Tool.

### Installation with CLI

Firstly, you must have `git` and `svn` installed. 

```shell
sudo apt install curl git subversion wget
```

* **Ubuntu 16.04 and below and any Debian-derived distros**
```shell
# If the folder icons doesn't exist
mkdir ~/.icons
# As you are an user of before Ubuntu 16.04 and below, you must install firstly Sam Hewitt' Suru Icons
svn export https://github.com/snwh/suru-icon-theme/trunk/Suru/ ~/.icons/Suru
# Download quickly like a Millennium Falcon
svn export https://github.com/Magog64/SURU-PLUS/trunk/ ~/.icons/Suru++
# When we will update the icons, and if you want to update the icons, just overwrite
svn export --force https://github.com/Magog64/SURU-PLUS/trunk/ ~/.icons/Suru++
```

* **Ubuntu 16.04.4 and above**
```shell
# If the folder icons doesn't exist
mkdir ~/.local/share/icons
# As you are an user of before Ubuntu 16.04 and above, you must install firstly Sam Hewitt' Suru Icons
svn export https://github.com/snwh/suru-icon-theme/trunk/Suru/ ~/.local/share/icons/Suru
# Download quickly like a Millennium Falcon
svn export https://github.com/Magog64/SURU-PLUS/trunk/ ~/.local/share/icons/Suru++
# When we will update the icons, and if you want to update the icons, just overwrite
svn export --force https://github.com/Magog64/SURU-PLUS/trunk/ ~/.local/share/icons/Suru++
```

* **Ubuntu 18.04 and above**

You do not need to download and install Sam Hewitt's Suru Icon, because it already comes installed under Ubuntu 18.04 and above

```shell
# If the folder icons doesn't exist
mkdir ~/.local/share/icons
# Download quickly like a Millennium Falcon
svn export https://github.com/Magog64/SURU-PLUS/trunk/ ~/.local/share/icons/Suru++
# When we will update the icons, and if you want to update the icons, just overwrite
svn export --force https://github.com/Magog64/SURU-PLUS/trunk/ ~/.local/share/icons/Suru++
```

* **PPA (Ubuntu and Debian-derived)**

Soon...

## Bugs and reports

### CrossFTP, GitHub Desktop, Gravit Designer and Mozc Setup are not well displayed

It is not the pack's problem. It is the desktop files problem because they used the relative path of an icon, put the strange icon names and use the PNG format instead. Therefore it is important to copy the desktop files to the local of your home folder for preventing the icons from being changed because in the next updates, Ubuntu and PPAs can modify always the desktop files. Follow the instructions:

1. Run the command via terminal:

```shell
sudo nautilus /usr/share/applications/
```

2. Copy the desktop files of CrossFTP, GitHub Desktop and Mozc Setup and paste on `yourname/.local/share/applications`.

3. Open them with Text Editor and modify the icon paths:

#### CrossFTP
* `Icon=/usr/share/crossftp/logo_big.png` to `Icon=crossftp`

#### GitHub Desktop
* `Icon=desktop` to `Icon=github`

#### Mozc Setup
* `Icon=/usr/share/icons/mozc/ime_product_icon_opensource-32.png` to `Icon=ime_product_icon_opensource-32`

#### Gravit Designer

If you snapped Gravit Designer, 

Run the command via terminal:

```shell
sudo nautilus /var/lib/snapd/desktop/applications/
```

Copy the `gravit-designer_gravit-designer.desktop` to `yourname/.local/share/applications/`

Open this desktop file and modify to `Icon=gravit`.

We recommend you to back your files up when you intend to make a clean install or reinstall your distribution.

* Do you find the missed icons?
* Do you find the misused icons?
* Did you find the errors?

Report, but please provide well-detailed informations:

* Distribution and version
* Steps to reproduce
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

LGPL3 © Suru++