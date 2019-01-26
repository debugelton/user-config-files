#!/bin/bash

helpBlock="
# :PlugUpdate [name ...] [#threads]  - Install or update plugins
# :PlugInstall [name ...] [#threads] - installs plugins; append '!' to update or just :PluginUpdate
# :PlugClean[!]                      - confirms removal of unused plugins; append '!' to auto-approve removal
# :PlugUpgrade                       - Upgrade vim-plug itself
# :PlugStatus                        - Check the status of plugins
# :PlugDiff                          - Examine changes from the previous update and the pending changes
# :PlugSnapshot[!] [output path]     - Generate script for restoring the current snapshot of the plugins
"

# folder checks
[ -f ~/.vim/bundle/plug.vim ] || curl -fLo ~/.vim/bundle/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# init .vimrc file
file=~/.vimrc

Plugins="";

# check if .vimrc exists
if ! [ -w $file ]; then
	echo "$file not exists."
	echo "" > $file
	echo "$file successful created"
fi

echo "you want to install fuzzy finder? (yes/no)"
read decition
if [[ $decition =~ [yes|y] ]]; then
	Plugins="$Plugins
# https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"
fi

echo "you want to install \"tpope/vim-fugitive? (yes/no)\""
read decition
if [[ $decition =~ [yes|y] ]]; then
	Plugins="$Plugins
Plug 'tpope/vim-fugitive'
"
fi
# check if .vimrc already contains a plug plugin
if grep -q "plug#begin(" $file ; then
	echo "Programm stopped!"
	echo "In ~/.vimrc is already a \"plug#begin()\" entry."
	echo $helpBlock
	exit 1
fi

configBlock="
# plug config block
call plug#begin('~/.vim/bundle')

$Plugins

call plug#end()

# Brief help
$helpBlock
" 
echo "$configBlock" >> $file
echo "added successful Plug plugin into $file"
echo ""
echo $helpBlock
