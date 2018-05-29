# Installation with CLI

## For users of Ubuntu 16.04.4 and above, Ubuntu 18.04, Kali Linux and any new Debian-derived distributions.

Firstly, you must have `git` and `svn` installed. 

```shell
sudo apt install curl git subversion wget
```

We replace Git for SVN and recommend strongly SVN, which is quicker like a Millennium Falcon than Git. 

```shell
# If the folder icons doesn't exist
mkdir ~/.local/share/icons
# Download quickly like a Millennium Falcon
svn export https://github.com/Magog64/SURU-PLUS/trunk/ ~/.local/share/icons/Suru++
# To update the next latest changes and to overwrite
svn export --force https://github.com/Magog64/SURU-PLUS/trunk/ ~/.local/share/icons/Suru++
```
