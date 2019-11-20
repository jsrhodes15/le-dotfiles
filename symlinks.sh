#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

# dotfiles directory
dir=~/dotfiles
# old dotfiles backup directory
olddir=~/dotfiles_old
# include all config files that you want to be used here
files="gitconfig gitignore zsh_aliases zshrc"

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
    mv ~/.$file ~/$olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# TODO figure out a way to reuse above logic, without prepending a "." to the Brewfile (silly rubyists)
echo "Moving Brewfile from ~ to $olddir"
mv ~/Brewfile ~/$olddir/Brewfile
echo "Creating symlink to Brewfile in home directory."
ln -s $dir/Brewfile ~/Brewfile
