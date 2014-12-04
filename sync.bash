set -e
cp ~/.vimrc ~/vimfile
cd ~/vimfile
git add . 
git commit -m "Update"
git push
