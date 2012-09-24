#Skript to remove the private links:

sed -e 's/.\+PRIVATE="1".\+//' ~/Downloads/delicious.html > bookmarks.html
rm ~/Downloads/delicious.html
