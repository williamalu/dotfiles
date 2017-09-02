# http://wikis.olin.edu/linux/doku.php?id=ubuntu_wireless_issues
echo "--- Fixing wifi dropping issues ---"
echo "options iwlwifi 11n_disable=1" | sudo tee /etc/modprobe.d/iwlwifi-11n_disable.conf
echo ""

# For manually mounting CIFS/SMB Windows Filesystems
echo "--- Installing cifs-utils ---"
sudo apt-get install cifs-utils
echo ""

echo "--- Downloading NVM ---"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | zshpick
echo ""

echo "--- Installing NVM ---"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node
echo ""

echo "--- System reboot may be required for changes to take affect ---"
echo ""

echo "--- General setup is complete ---"
echo ""
