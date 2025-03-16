#!/bin/zsh

cd $HOME

rm ~/.config/starthip.toml
rm ~/.config/alacritty/alacritty.toml
rm .zshrc
rm .gitfiles
rm $HOME/Library/Application\ Support/espanso/match/addSnpt.yml
rm ~/.tmux.conf

ln -s ~/dotfilem/starship.toml ~/.config/starthip.toml
ln -s ~/dotfilem/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s ~/dotfilem/.zshrc .zshrc
ln -s ~/dotfilem/.gitfiles .gitfiles
ln -s ~/dotfilem/addSnpt.yml $HOME/Library/Application\ Support/espanso/match/addSnpt.yml
ln -s ~/dotfilem/.tmux.conf ~/.tmux.conf
