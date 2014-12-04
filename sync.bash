set -e
cp ~/.vimrc ~/vimfile
cd ~/vimfile
git add -u
git commit -m "Update"
git push
