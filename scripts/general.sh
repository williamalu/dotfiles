# http://wikis.olin.edu/linux/doku.php?id=ubuntu_wireless_issues
echo "--- Fixing wifi dropping issues ---"
echo "options iwlwifi 11n_disable=1" | sudo tee /etc/modprobe.d/iwlwifi-11n_disable.conf
echo ""

# For manually mounting CIFS/SMB Windows Filesystems
echo "--- Installing cifs-utils ---"
sudo apt-get install cifs-utils
echo ""

echo "--- System reboot may be required for changes to take affect ---"
echo ""

echo "--- General setup is complete ---"
echo ""
