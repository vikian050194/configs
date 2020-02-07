echo "change password policy if needed"
sudo nano /etc/pam.d/common-password

echo "change your password"
passwd

echo "change root password"
sudo passwd root

echo "login as su"
su

gitFolder="git"

cd "/home/$USER"
mkdir "$gitFolder"
cd "$gitFolder"

declare -a repos=("py" "ToDo" "Square" "polyglot" "Templates" "Cluster" "controller" "DigitalBrain" "configs" "BSorting" "Chat" "CalculatorM" "KirillV" "vscode-ext-js" "vscode-ext-ts" "RegularExpressionToNFA" "TheoryOfProbability")

for repo in "${repos[@]}"
do
   git clone "https://github.com/vikian050194/$repo.git" "${repo,,}"
done

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