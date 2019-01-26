#!/bin/bash

# folder checks
[ -d ~/.vim/bundle ] 	        || mkdir -p ~/.vim/bundle
[ -d ~/.vim/bundle/Vundle.vim ] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# init .vimrc file
file=~/.vimrc

# check if .vimrc exists
if ! [ -w $file ]; then
	echo "$file not exists."
	echo "" > $file
	echo "$file successful created"
fi

# check if .vimrc already contains a vundle plugin
if grep -q "vundle#begin()" $file ; then
	echo "Programm stopped!"
	echo "In ~/.vimrc is already a \"vundle#begin()\" entry."
	exit 1
fi

vundleConfigBlock="
#set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
# alternatively, pass a path where Vundle should install plugins
# call vundle#begin('~/some/path/here')

# let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

# The following are examples of different formats supported.
# Keep Plugin commands between vundle#begin/end.
# plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

# https://github.com/junegunn/fzf.vim
Plugin 'junegunn/fzf.vim'

# All of your Plugins must be added before the following line
call vundle#end()            \" required
filetype plugin indent on    \" required
# To ignore plugin indent changes, instead use:
filetype plugin on
#
# Brief help
# :PluginList       - lists configured plugins
# :PluginInstall    - installs plugins; append '!' to update or just :PluginUpdate
# :PluginSearch foo - searches for foo; append '!' to refresh local cache
# :PluginClean      - confirms removal of unused plugins; append '!' to auto-approve removal
#
# see :h vundle for more details or wiki for FAQ
# Put your non-Plugin stuff after this line
" 
echo "$vundleConfigBlock" >> $file
echo "added successful Vundle plugin into $file"
echo ""
echo ":PluginList       - lists configured plugins"
echo ":PluginInstall    - installs plugins; append '!' to update or just :PluginUpdate"
echo ":PluginSearch foo - searches for foo; append '!' to refresh local cache"
echo ":PluginClean      - confirms removal of unused plugins; append '!' to auto-approve removal"

