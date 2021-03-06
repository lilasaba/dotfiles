#!/bin/bash
############################
# ./makesyimlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles
# in ~/dotfiles
############################

########## Variables

# dotfiles directory
dir=~/dotfiles
# old dotfiles backup directory
olddir=~/dotfiles_old
# list of files/folders to symlink in homedir
files=".bashrc .bash_profile .gitconfig .vim .vimrc .tmux.conf .cronfile"
##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

# install jedi
# TODO: this should install jedi in the *default* python3 (with vim 8.1).
pip install jedi
#pip3 install jedi

# install flake8
sudo apt install flake8

# source bash_profile
cd ~
source .bash_profile
source .bashrc

# set cronjob
crontab .cronfile

