



sudo apt-get update && sudo apt-get install -y locales
sudo localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8
sudo update-locale LC_ALL=pt_BR.UTF-8 LANG=pt_BR.UTF-8

#
#https://stackoverflow.com/questions/39760663/docker-ubuntu-bin-sh-1-locale-gen-not-found


echo "LC_ALL=pt_BR.UTF-8" | sudo tee -a /etc/environment
echo "pt_BR.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
echo "LANG=pt_BR.UTF-8" | sudo tee -a /etc/locale.conf
sudo locale-gen pt_BR.UTF-8


#https://askubuntu.com/questions/599808/cannot-set-lc-ctype-to-default-locale-no-such-file-or-directory
