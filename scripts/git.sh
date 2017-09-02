echo "--- Installing git ---"
sudo apt-get -y install git
echo ""

echo "--- Editing git config ---"
git config --global user.email "skelly.olin@gmail.com"
git config --global user.name "Shane Kelly"
git config --global core.editor "vi"
git config --global push.default "simple"
echo ""

echo "--- Git setup is complete ---"
echo ""
