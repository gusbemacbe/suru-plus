#!/bin/sh

set -e

# these variables can be overwritten
: "${DESTDIR:=/usr/share/icons}"
: "${TAG:=master}"
: "${THEMES:=Suru++}"
: "${uninstall:=false}"

gh_url="https://github.com/gusbemacbe"
gh_repo="suru-plus"
gh_desc="Suru++ icon theme"

cat <<- EOF

     _____                                     ___    ___
    / ____|                       _      _    |__ ⧹  / _ ⧹
   | (___   _   _  _ __  _   _  _| |_  _| |_     ) || | | |
    ⧹___ ⧹ | | | || '__|| | | ||_   _||_   _|   / / | | | |
    ____) || |_| || |   | |_| |  |_|    |_|    / /_ | |_| |
   |_____/  ⧹__,_||_|    ⧹__,_|               |____| ⧹___/



  $gh_desc
  $gh_url/$gh_repo


EOF

case "$LANG" in
    be_*)
        msg_download="Загрузка апошняй версіі з GitHub ..."
        msg_extract="Распакаванне архіва ..."
        msg_uninstall="Выдалення"
        msg_install="Ўстаноўка"
        msg_cleanup="Ачыстка кэша ..."
        msg_done="Гатова!"
        ;;
    de_*)
        msg_download="Die neueste Version von GitHub erreichen ..."
        msg_extract="Archiv wird entpackt ..."
        msg_uninstall="Löschen"
        msg_install="Installieren"
        msg_cleanup="Cache wird gelöscht ..."
        msg_done="Fertig!"
        ;;
    es_*)
        msg_download="Obteniendo la última versión de GitHub ..."
        msg_extract="Descomprimiendo el archivo ..."
        msg_uninstall="Eliminando"
        msg_install="Instalando"
        msg_cleanup="Borrando caché ..."
        msg_done="¡Hecho!"
        ;;
    fr_*)
        msg_download="Trouver la dernière version de GitHub ..."
        msg_extract="Décompresser le fichier ..."
        msg_uninstall="Supprimer"
        msg_install="Installer"
        msg_cleanup="Effacer le cache ..."
        msg_done="Fait!"
        ;;
    it_*)
        msg_download="Ottenendo l'ultima versione da GitHub ..."
        msg_extract="Decomprimendo l'archivio ..."
        msg_uninstall="Eliminare"
        msg_install="Installando"
        msg_cleanup="Pulendo la cache ..."
        msg_done="Fatto!"
        ;;
    nl_*)
        msg_download="De nieuwste versie van GitHub vinden..."
        msg_extract="Archief uitpakken ..."
        msg_uninstall="Verwijderen"
        msg_install="Installeren"
        msg_cleanup="Cache wissen ..."
        msg_done="Klaar!"
        ;;
    pt_*)
        msg_download="Obtendo a última versão do GitHub ..."
        msg_extract="Extraindo o arquivo ..."
        msg_uninstall="Excluindo"
        msg_install="Instalando"
        msg_cleanup="Limpando o cache ..."
        msg_done="Pronto!"
        ;;
    ru_*)
        msg_download="Загрузка последней версии с GitHub ..."
        msg_extract="Распаковка архива ..."
        msg_uninstall="Удаление"
        msg_install="Установка"
        msg_cleanup="Очистка кеша ..."
        msg_done="Завершено!"
        ;;
    uk_*)
        msg_download="Завантаження останньої версії з GitHub ..."
        msg_extract="Розпакування архіву ..."
        msg_uninstall="Видалення"
        msg_install="Інсталяція"
        msg_cleanup="Очищення кешу ..."
        msg_done="Завершенно!"
        ;;
    *)
        # English as default
        msg_download="Getting the latest version from GitHub ..."
        msg_extract="Unpacking archive ..."
        msg_uninstall="Deleting"
        msg_install="Installing"
        msg_cleanup="Clearing cache ..."
        msg_done="Done!"
        ;;
esac

_msg() {
    echo "=>" "$@" >&2
}

_rm() {
    # removes parent directories if empty
    sudo rm -rf "$1"
    sudo rmdir -p "$(dirname "$1")" 2>/dev/null || true
}

_sudo() {
    if [ -w "$DESTDIR" ] || [ -w "$(dirname "$DESTDIR")" ]; then
        "$@"
    else
        sudo "$@"
    fi
}

_download() {
    _msg "$msg_download"
    wget -O "$temp_file" \
        "$gh_url/$gh_repo/archive/$TAG.tar.gz"
    _msg "$msg_extract"
    tar -xzf "$temp_file" -C "$temp_dir"
}

_uninstall() {
    for theme in "$@"; do
        test -d "$DESTDIR/$theme" || continue
        _msg "$msg_uninstall '$theme' ..."
        _rm "$DESTDIR/$theme"
    done
}

_install() {
    # strip leading `v` symbol
    tag="${TAG#v}"

    _sudo mkdir -p "$DESTDIR"

    for theme in "$@"; do
        test -d "$temp_dir/$gh_repo-$tag/$theme" || continue
        _msg "$msg_install '$theme' ..."
        _sudo cp -R "$temp_dir/$gh_repo-$tag/$theme" "$DESTDIR"
        _sudo cp -f \
            "$temp_dir/$gh_repo-$tag/AUTHORS" \
            "$temp_dir/$gh_repo-$tag/COPYING" \
            "$temp_dir/$gh_repo-$tag/CREDITS" \
            "$temp_dir/$gh_repo-$tag/LICENSE" \
            "$DESTDIR/$theme" || true
        _sudo gtk-update-icon-cache -q "$DESTDIR/$theme" || true
    done

    # Try to restore the color of folders from a config
    if which suru-plus-folders > /dev/null 2>&1; then
        suru-plus-folders -R || true
    fi
}

_cleanup() {
    _msg "$msg_cleanup"
    rm -rf "$temp_file" "$temp_dir"
    rm -f "$HOME/.cache/icon-cache.kcache"
    _msg "$msg_done"
}

trap _cleanup EXIT HUP INT TERM

temp_file="$(mktemp -u)"
temp_dir="$(mktemp -d)"

if [ "$uninstall" = "false" ]; then
    _download
    _uninstall $THEMES
    _install $THEMES
else
    _uninstall $THEMES
fi
