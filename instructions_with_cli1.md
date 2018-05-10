# Installation with CLI

## For users of old Ubuntu versions, Ubuntu 16.04 and any Debian-derived distributions

Firstly, you must have `git` and `svn` installed. 

```shell
sudo apt install curl git subversion wget
```

Choose one of two options — Git or SVN. We recommend strongly SVN, which is quicker than Git. 

### Git

```shell
# If the folder icons doesn't exist
mkdir ~/.icons
# You need to enter in the icons folder to download the icons packs
cd ~/.icons
# As you are an user of old Ubuntu versions, Ubuntu 16.04 and any Debian-derived distributions, you must install firstly Sam Hewitt's Suru Icons
git init ~/.icons
git remote add -f origin https://github.com/snwh/suru-icon-theme
git config core.sparseCheckout true
echo "Suru" >> .git/info/sparse-checkout
git pull origin master
# Download then the icon pack...
git clone https://github.com/Magog64/SURU-PLUS.git
# To update the next latest changes
git pull origin master 
```

### SVN

```shell
# If the folder icons doesn't exist
mkdir ~/.icons
# As you are an user of old Ubuntu versions, Ubuntu 16.04 and any Debian-derived distributions, you must install firstly Sam Hewitt's Suru Icons
svn export https://github.com/snwh/suru-icon-theme/trunk/Suru/ ~/.icons/Suru
# Download quickly like a Millennium Falcon
svn export https://github.com/Magog64/SURU-PLUS/trunk/ ~/.icons/Suru++
# To update the next latest changes and to overwrite
svn export --force https://github.com/Magog64/SURU-PLUS/trunk/ ~/.icons/Suru++
```