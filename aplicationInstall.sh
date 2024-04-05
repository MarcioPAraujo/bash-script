#!/bin/bash
echo "#################################################################apt update###################################################################### ..."
sudo apt update

echo "###############################################################installing VLC################################################################### ..."
sudo apt install snapd -y
sudo snap install vlc

echo "###########################################################instaling htop##################################################################### ..."
sudo apt install htop

echo "########################################################INSTALLING MYSQL######################################################################"
sudo apt install mariadb-server -y
sudo mysql_secure_installation


echo "#########################################################instaling qbittiorrent############################################################## ..."
sudo apt install qbittorrent -y

echo "###########################################################instaling java####################################################################### ..."
sudo apt install default-jdk -y

echo "##############################################################instaling node js################################################################### ...."
sudo apt install nodejs npm -y

echo "################################################################installing tor##################################################################### ..."
sudo apt install tor torbrowser-launcher -y

echo "################################################################instaling vs code################################################################## ...."
echo "instaling necessary packges"
#installing necessary packges
sudo apt install dirmngr ca-certificates software-properties-common apt-transport-https curl -y
echo "################################################################importing  microsoft gpg key######################################################### "
#importing official microsoft repository
curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg >/dev/null

echo "###################################################################adding microsoft repository to apt################################################### "
echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list

echo "#########################################################################updating to install code######################################################## ..."
sudo apt update
sudo apt install code

echo "###########################################################################installing anki################################################################ ..."
echo "installing the requirements"
sudo apt install libxcb-xinerama0 libxcb-cursor0 libnss3
sudo apt install zstd
echo "#########################################################################switch to download directory################################################################"
ls
read -p  "type the download directory:" DOWN_DIR
cd $DOWN_DIR
echo "###################################################################################################WGET IN ANKI, NETBEANS, TOMCAT AND TOR BROWSER#############################"
wget https://dlcdn.apache.org/netbeans/netbeans-installers/21/apache-netbeans_21-1_all.deb
sudo dpkg -i apache-netbeans_21-1_all.deb 
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.20/bin/apache-tomcat-10.1.20.tar.gz
sudo chmod -R 777 /opt
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-10.1.20.tar.gz -C /opt/tomcat --strip-components=1
USER = $(whoami)
sudo chown -R $USER /opt/tomcat 
wget https://www.torproject.org/dist/torbrowser/13.0.13/tor-browser-linux-x86_64-13.0.13.tar.xz
wget https://github.com/ankitects/anki/releases/download/23.12.1/anki-23.12.1-linux-qt6.tar.zst

sudo tar -xf tor-browser-linux-x86_64-13.0.13.tar.xz 
sudo tar -xf anki-23.12.1-linux-qt6.tar.zst
cd anki-23.12.1-linux-qt6/
sudo ./install.sh
cd ~
echo "installing git ..."
sudo apt get-install git
git config --global user.name "MarcioPAraujo"
git config --global user.email "marciopereiraaraujo1997d1@gmail.com"
ssh-keygen -t ed25519 -C "marciopereiraaraujo1997d1@gmail.com"
sudo cd .ssh/
cat id_ed25519.pub
firefox https://github.com/settings/ssh/new
