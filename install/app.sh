apt update

echo "install Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo "install curl"
apt install curl

echo "install Git"
apt install git -y

echo "install Meld"
apt-get install -y meld

echo "install snap"
apt install snapd

echo "install Postman"
snap install postman

echo "install Node.js and npm"
snap install node --channel=12/stable --classic

echo "install VS Code"
snap install code --classic

echo "install PyCharm CE"
snap install pycharm-community --classic

echo "install Default OpenJDK (Java 11)"
sudo apt install default-jdk