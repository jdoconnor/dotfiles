echo "\e[34m setting up brew"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
yes | sudo apt-get install build-essential zsh

echo '\e[34m eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> ~/.profile

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew install autoconf \
berkeley-db \
expat \
gdbm \
libbsd \
libyaml \
m4 \
ncurses \
nvm \
openssl@1.1 \
patchelf \
perl \
pkg-config \
rbenv \
readline \
ruby \
ruby-build \
zlib \
xz \
golang

echo "\e[34m setting up ruby"
rbenv install 2.7.0

echo "\e[34m setting up flutter"
cd ~
wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.12.13+hotfix.5-stable.tar.xz
tar xfv flutter_linux_v1.12.13+hotfix.5-stable.tar.xz

echo "\e[34m setting up tilix"
echo 'deb http://ftp.debian.org/debian stretch-backports main' | sudo tee /etc/apt/sources.list.d/stretch-backports.list
sudo apt update
sudo apt -y install tilix
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
echo "source /etc/profile.d/vte.sh" >> .zshrc

echo "\e[34m setting up vscode"
curl -L https://go.microsoft.com/fwlink/?LinkID=760868 > code.deb
sudo apt-get install ./code.deb

git config --global user.email "jay@jayoconnor.com"
git config --global user.name "Jay OConnor"

echo "\e[34m setting up ohmyzsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "\e[34m setting up vim"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh