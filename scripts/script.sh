# find .  -type l -lname 'accessibility.svg' -printf 'ln -nsf yyy "%p"\n' > script2.sh

echo "Old symlink"
read old

old2=$old

echo "New link"
read new

for old in $(find -type l -lname $old); do
   ln -sfnr $new $old 
done

ln -sfnr $new $old2