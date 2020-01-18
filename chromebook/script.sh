echo "setting up brew"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew install autoconf berkeley-db expat gdbm libbsd libyaml m4 ncurses nvm openssl@1.1 patchelf perl pkg-config rbenv readline ruby ruby-build zlib xz

echo "setting up ruby"
rbenv install 2.7.0

echo "setting up flutter"
cd ~
wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.12.13+hotfix.5-stable.tar.xz
tar xfv flutter_linux_v1.12.13+hotfix.5-stable.tar.xz

echo "setting up tilix"
echo 'deb http://ftp.debian.org/debian stretch-backports main' | sudo tee /etc/apt/sources.list.d/stretch-backports.list
sudo apt update
sudo apt -y install tilix
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
echo "source /etc/profile.d/vte.sh" >> .zshrc

echo "setting up vscode"
curl -L https://go.microsoft.com/fwlink/?LinkID=760868 > code.deb
sudo apt-get install ./code.deb