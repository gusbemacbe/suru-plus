echo -e "Type the old icon name "
read old_icon

echo -e "Type the new icon name "
read new_icon

cp -f $old_icon'.svg' new_icon'.svg'

for i in * ; do
    if [ -h $i ]; then
        NEWTARGET=`readlink $i | sed 's,'$old_icon'.svg,'$new_icon'.svg,'`
        rm -f $i
        ln -sfnr $NEWTARGET $i
    fi
done

ln -sfnr $new_icon'.svg' $old_icon'.svg'