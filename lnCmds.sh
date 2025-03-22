#!/bin/zsh

cd $HOME

rm -f ~/.config/starship.toml
rm ~/.config/alacritty/alacritty.toml
rm ~/.config/helix/config.toml
rm .zshrc
rm .gitconfig
rm $HOME/Library/Application\ Support/espanso/match/addSnpt.yml
rm ~/.tmux.conf

ln -s ~/dotfilem/starship.toml ~/.config/starship.toml
ln -s ~/dotfilem/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s ~/dotfilem/.zshrc .zshrc
ln -s ~/dotfilem/.gitconfig .gitconfig
ln -s ~/dotfilem/addSnpt.yml $HOME/Library/Application\ Support/espanso/match/addSnpt.yml
ln -s ~/dotfilem/.tmux.conf ~/.tmux.conf
ln -s ~/dotfilem/helixconf.toml ~/.config/helix/config.toml
