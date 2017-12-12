echo "--- Installing vim ---"
sudo apt-get -y install vim
echo ""

# For installing other things
echo "--- Installing pip ---"
sudo apt-get -y install python-pip
echo ""

# C++ linter for w0rp/ale plugin
echo "--- Installing cpplint ---"
sudo pip install cpplint
echo ""

# C++ linter for w0rp/ale plugin
echo "--- Installing cppcheck ---"
sudo apt-get install cppcheck
echo ""

# Python linter for w0rp/ale plugin
echo "--- Installing flake8 ---"
sudo pip install flake8
echo ""

# Fuzzy file finder for junegunn/fzf plugin
echo "--- Installing ag ---"
sudo apt-get install silversearcher-ag
echo ""

echo "--- Updating vimrc ---"
mkdir -p ~/.vim
cp -v ../config/vimrc ~/.vim/vimrc
echo ""

echo "--- Vim setup is complete ---"
echo ""
