echo "--- Installing vim ---"
sudo apt-get -y install vim
echo ""

echo "--- Updating vimrc ---"
mkdir -p ~/.vim
cp -v ../config/vimrc ~/.vim/vimrc
echo ""

echo "--- Vim setup is complete ---"
echo ""
