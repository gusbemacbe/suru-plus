# find .  -type l -lname 'accessibility.svg' -printf 'ln -nsf yyy "%p"\n' > script2.sh

echo "Nuovo collegamento"
read nuovo

for vecchio in *.svg; do
   ln -sfnr $nuovo $vecchio 
done