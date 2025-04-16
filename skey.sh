#!/usr/bin/env bash

# ファイルが存在するかしないか・ディレクトリが存在するかしないか
# existence(存在)という単語からEXISという環境変数とした
# また、EXも同じ役割をするものとして自分なりに定義
# EX=1が存在する
# EX=0は存在しない
# for iterm2 ======================
# 
ex=0
exis=0

if [ -f /opt/homebrew/bin/bat ];then
  ex=1
  exis=1
  bat $HOME/dotfilem/cf.skey
else
  echo "EXIS=$EXIS"
  echo -e "\n  bat コマンドをインストールしますか？(y/n)"
  read -p '> ' ANS
  if [ $ANS == "y" ];then
    brew install bat
    echo -e "\n bat をインストールしました。"
  else
    cat $HOME/dotfilem/cf.skey
  fi
fi

