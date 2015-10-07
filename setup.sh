#!/bin/bash

REPO_DIR=$(pwd)

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &&
brew update &&
brew install vim &&
brew install git &&
brew install wget &&

cd ~/git
git clone git@github.com:powerline/fonts.git &&
cd fonts &&
./install.sh

cd ~/Downloads
wget https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors &&
open Solarized\ Dark.itermcolors &&

cd $REPO_DIR
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&
cp .vimrc ~/.vimrc &&
vim -c PluginInstall -c quitall &&
cp .bash_profile ~/.bash_profile

# moom
open /Applications/Google\ Chrome.app https://manytricks.com/download/moom
open ~/Downloads/moom*dmg

read -n 1 -p "after installing moom press any key to continue" "mainmenuinput"
cp ./com.manytricks.Moom.plist ~/Library/Preferences/com.manytricks.Moom.plist
open /Applications/Moom.app
