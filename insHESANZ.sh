#!/usr/bin/env bash

# 関数: ユーザーに確認を促す
confirm_install() {
  read -p "Do you want to install $1? (y/n): " choice
  case "$choice" in
    y|Y ) return 0 ;; # ユーザーが "y" を選択した場合
    * ) return 1 ;;   # その他の場合
  esac
}

# NeoVim and configuration setup
if confirm_install "NeoVim"; then
  if ! brew list neovim &>/dev/null; then
    echo "Installing NeoVim..."
    brew install neovim

    # curlの確認とインストール（必要なら）
    if ! command -v curl &>/dev/null; then
      echo "Installing curl..."
      brew install curl
    else
      echo "curl is already installed."
    fi

    # NeoVimの設定ファイルをセットアップする処理を実行
    echo "Setting up NeoVim configuration..."
    mkdir -p ~/.config/nvim/
    mkdir -p ~/.config/nvim/plugged

    # if [ ! -L ~/.config/nvim/init.vim ]; then
    #   rm -f ~/.config/nvim/*
    #   echo -e "Deleted init.vim and re-created a new one."
    #   ln -s ~/dotfilem/init.vim ~/.config/nvim/init.vim # シンボリックリンク作成
    #   echo "Linked init.vim to ~/.config/nvim/"
    # fi
    if [ ! -L ~/.config/nvim/init.vim ] || [ -f ~/.config/nvim/init.vim ]; then
        rm -f ~/.config/nvim/init.vim  # init.vimのみ削除
        echo -e "Deleted init.vim and re-created a new one."
        ln -s ~/dotfilem/init.vim ~/.config/nvim/init.vim
        echo "Linked init.vim to ~/.config/nvim/"
    fi


    if [ ! -f "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" ]; then
      sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      echo "Installed vim-plug for NeoVim."
    fi

    echo -e "\n\nInstall Completed. Start nvim and run :PlugInstall"
  else
    echo "NeoVim is already installed."
  fi
else
  echo "Skipping NeoVim installation."
fi

# Helix Editor
if confirm_install "Helix"; then
  if ! brew list helix &>/dev/null; then
    echo "Installing Helix..."
    brew install helix
  else
    echo "Helix is already installed."
  fi
else
  echo "Skipping Helix installation."
fi

# Espanso
if confirm_install "Espanso"; then
  if ! brew list espanso &>/dev/null; then
    echo "Installing Espanso..."
    brew tap espanso/espanso
    brew install espanso
  else
    echo "Espanso is already installed."
  fi
else
  echo "Skipping Espanso installation."
fi

# Alacritty
if confirm_install "Alacritty"; then
  if ! brew list --cask alacritty &>/dev/null; then
    echo "Installing Alacritty..."
    brew install --cask alacritty
  else
    echo "Alacritty is already installed."
  fi
else
  echo "Skipping Alacritty installation."
fi

# Starship
if confirm_install "Starship"; then
  if ! brew list starship &>/dev/null; then
    echo "Installing Starship..."
    brew install starship
  else
    echo "Starship is already installed."
  fi
else
  echo "Skipping Starship installation."
fi

# Zsh and plugins setup (Zsh本体)
if confirm_install "Zsh"; then
  if ! brew list zsh &>/dev/null; then
    echo "Installing Zsh..."
    brew install zsh

    # Zsh plugins installation (個別に確認)
    for plugin in zsh-completions zsh-autosuggestions zsh-syntax-highlighting; do
      if confirm_install "$plugin"; then 
        if ! brew list $plugin &>/dev/null; then 
          echo "Installing $plugin..."
          brew install $plugin 
        else 
          echo "$plugin is already installed." 
        fi 
      else 
        echo "Skipping $plugin installation." 
      fi 
    done
    
  else 
     echo "Zsh is already installed"
  fi
fi
