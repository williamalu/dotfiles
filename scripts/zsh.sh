echo "--- Downloading Zsh ---"
sudo apt-get -y install zsh
echo ""

echo "--- Installing Oh My Zsh ---"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh 
echo ""

echo "--- Updating .zshrc ---"
cp -v ../config/zshrc ~/.zshrc
echo ""

echo "--- Setting Zsh to default shell ---"
chsh -s $(which zsh)
echo ""

echo "--- Downloading Zsh Auto-Suggestion Plugin ---"
sudo git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo ""

echo "--- System reboot may be required for changes to take affect ---"
echo ""

echo "--- Zsh setup is complete ---"
echo ""
