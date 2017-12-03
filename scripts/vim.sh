echo "--- Installing vim ---"
sudo apt-get -y install vim
echo ""

echo "--- Installing pip ---"
sudo apt-get -y install python-pip
echo ""

# C++ linter
echo "--- Installing cpplint ---"
sudo pip install cpplint
echo ""

# Python linter
echo "--- Installing flake8 ---"
sudo pip install flake8
echo ""

echo "--- Updating vimrc ---"
mkdir -p ~/.vim
cp -v ../config/vimrc ~/.vim/vimrc
echo ""

echo "--- Vim setup is complete ---"
echo ""
