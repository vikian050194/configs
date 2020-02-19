apt update

echo "install curl"
apt install curl
curl --version

echo "install Git"
apt install git -y
git --version

echo "install Meld"
apt-get install -y meld

echo "install snap"
apt install snapd

echo "install Postman"
snap install postman

echo "install Node.js and npm"
snap install node --channel=12/stable --classic
node --version
npm --version

echo "install VS Code"
snap install code --classic

echo "install PyCharm CE"
snap install pycharm-community --classic

echo "install Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb