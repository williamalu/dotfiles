# Install vim
echo "--- Installing vim ---"
sudo add-apt-repository -y ppa:jonathonf/vim  # vim 8.0 repo
sudo apt-get update
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
sudo apt-get -y install cppcheck
echo ""

# Fuzzy file finder for junegunn/fzf plugin
echo "--- Installing ag ---"
sudo apt-get -y install silversearcher-ag
echo ""

# Setup vimrc symlink
echo "--- Replacing vimrc with a symbolic link to this file ---"
mkdir -p ~/.vim
rm -v ~/.vim/vimrc
ln -v -s ~/.setup/vim/vimrc ~/.vim/vimrc
echo ""

echo "--- Vim setup is complete ---"
echo ""
