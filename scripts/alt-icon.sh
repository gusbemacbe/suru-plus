#!/bin/sh

set -e

case "$LANG" in
    de_*)
        msg_old="Alte symbolische Verknüpfung"
        msg_new="Neue symbolische Verknüpfung"
        ;;
    el_*)
        msg_old="Παλιός συμβολικός σύνδεσμος"
        msg_new="Νέος συμβολικός σύνδεσμος"
        ;;
    es_*)
        msg_old="Viejo enlace simbólico"
        msg_new="Nuevo enlace simbólico"
        ;;
    fr_*)
        msg_old="Vielle lien symbolique"
        msg_new="Nouvelle lien symbolique"
        ;;
    it_*)
        msg_old="Vecchio collegamento simbolico"
        msg_new="Nuovo collegamento simbolico"
        ;;
    ka_*)
        msg_old="ძველი სიმბოლური კავშირი"
        msg_new="ახალი სიმბოლური კავშირი"
        ;;
    nl_*)
        msg_old="Oude symbolische link"
        msg_new="Nieuwe symbolische link"
        ;;
    pt_*)
        msg_old="Velho link simbólico"
        msg_new="Novo link simbólico"
        ;;
    ro_*)
        msg_old="Legătură simbolică veche"
        msg_new="Legătură simbolică nouă"
        ;;
    ru_*)
        msg_old="Старая симлинк"
        msg_new="Новая симлинк"
        ;;
    uk_*)
        msg_old="Стара симлінк"
        msg_new="Нова симлінк"
        ;;
    *)
        # English as default
        msg_old="Old symlink"
        msg_new="New symlink"
        ;;
esac

_msg() 
{
    echo "=>" "$@" >&2
}

_msg "$msg_old"
read old

_msg "$msg_new"
read new

for old in $(find -type l -lname $old); do
   ln -sfnr $new $old 
done