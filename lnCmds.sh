#!/usr/bin/env bash

cd $HOME

# List of symbolic links to remove
declare -a files_to_remove=(
  "~/.config/starship.toml"
  "~/.config/alacritty/alacritty.toml"
  "~/.config/helix/config.toml"
  ".zshrc"
  ".gitconfig"
  "$HOME/Library/Application Support/espanso/match/addSnpt.yml"
  "~/.tmux.conf"
)

# Display the list of files to be removed
echo "The following symbolic links will be removed:"
for file in "${files_to_remove[@]}"; do
  echo "  ${file}"
done
echo ""

# Ask the user for confirmation
read -p "Do you want to remove these symbolic links? (y/Y/Enter=yes, n/N=no): " response

# Process based on the response
case "$response" in
  [yY]|"") # y, Y, or Enter
    echo "Starting removal..."
    for file in "${files_to_remove[@]}"; do
      echo "Removing: ${file}"
      rm -f "$file"
    done
    echo ""
    echo "Creating symbolic links..."
    ln -s ~/dotfilem/starship.toml ~/.config/starship.toml
    ln -s ~/dotfilem/alacritty.toml ~/.config/alacritty/alacritty.toml
    ln -s ~/dotfilem/.zshrc .zshrc
    ln -s ~/dotfilem/.gitconfig .gitconfig
    ln -s ~/dotfilem/addSnpt.yml "$HOME/Library/Application Support/espanso/match/addSnpt.yml"
    ln -s ~/dotfilem/.tmux.conf ~/.tmux.conf
    ln -s ~/dotfilem/helixconf.toml ~/.config/helix/config.toml
    echo "Symbolic links created successfully."
    ;;
  [nN]) # n or N
    echo "Removal cancelled."
    exit 0
    ;;
  *) # Other input
    echo "Invalid input. Removal cancelled."
    exit 1
    ;;
esac
