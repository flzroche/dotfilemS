export XDGkCONFIG_HOME="$HOME/.config"
export zinitpath="$HOME/.local/share/zinit/zinit.git/zinit.zsh"
export PATH="/opt/homebrew/opt:/opt/homebrew/bin:/Library/Android/sdk:$HOME/.local/bin:$PATH"
export EDITOR='vim'
export VISUAL='vim'


# 自分でGitCloneする場合は下記ディレクトリにて実行する
export GITDIR="$HOME/gD"

source ~/dotfilem/.alias
source ~/dotfilem/.zpreztorc
source "$GITDIR/antigen/antigen.zsh"
### Arc Browserが開かれている場合にタブに検索結果を表示する
source ~/scripts/webSearch.zsh

setopt AUTO_CD

eval "$(starship init zsh)"
