sudo apt update && sudo apt upgrade -y
sudo apt autoremove --purge -y
sudo apt clean && sudo apt autoclean
sudo apt remove --purge -y build-essential
sudo apt install -y chkrootkit rkhunter clamav

sudo chkrootkit
sudo rkhunter --update
sudo rkhunter --check
sudo freshclam
sudo clamscan -r --bell -i /home

apt-mark showmanual | less
echo"done :)"
