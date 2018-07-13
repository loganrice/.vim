#!/bin/bash
############################
# dotfiles_setup.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
dotfiles=(".vimrc" ".bashrc")     # list of files/folders to symlink in homedir
dir="${HOME}/.vim"                               # dotfiles directory

##########

for dotfile in "${dotfiles[@]}";do
  echo "Creating symlink to $dotfile in home directory $dir."
  ln -sf "${dir}/${dotfile}" "${HOME}/${dotfile}" 
done

