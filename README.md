dotfiles
========
## installing this
```
mkdir ~/workspace
git clone git://github.com/jdoconnor/dotfiles.git ~/workspace/dotfiles
```
## installing vim settings
```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cp ~/workspace/dotfiles/.vim_runtime/my_configs.vim ~/.vim_runtime/.
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim_runtime/sources_non_forked/vim-better-whitespace
```
