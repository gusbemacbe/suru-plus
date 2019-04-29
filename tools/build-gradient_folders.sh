# The default gradient folder is folder-discodingo
# Copy the folders with suffix discodingo to a new safe folder. Inside the safe, you can replace

find . -type f -exec sed -i \
-e 's/#85377d/#AA00FF/g' \
-e 's/#fb7c38/#09D4DF/g' \
-e 's/#ad7aa9/#9269F4/g' \
-e 's/#fdd1b9/#d7cff5/g' '{}' +

# After, use KRename to replace the discodingo with your new name. Some icons will be broken, but you can fix it, using the command in the terminal:
# rename -s 'discodingo' -- 'your_new_name' *.svg 