apt update

echo "install Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo "install curl"
sudo apt install curl

echo "install GNOME Tweaks"
sudo apt-get install gnome-tweak-tool

echo "install Git"
sudo apt install git -y

echo "install Meld"
sudo apt-get install -y meld

echo "install snap"
sudo apt install snapd

echo "install Postman"
snap install postman

echo "install Node.js and npm"
snap install node --channel=12/stable --classic

echo "install VS Code"
snap install code --classic

echo "install Flameshot"
sudo apt install flameshot

# echo "install PyCharm CE"
# snap install pycharm-community --classic

# echo "install Default OpenJDK (Java 11)"
# sudo apt install default-jdk