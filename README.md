# dotfilemS

Starshipを使用したMacOSターミナル。
Shellはzsh.

なお、ディレクトリ名は **dotfilem** とする。
dotfilemS とかにはしない。

# Requirements
- espanso
- alacritty
- zsh
- ./insZshPlugins.sh ←実行する
- tmux
- starship
- Helix(hx) Editor

上記アプリケーションを全てインストールすること。


## Symbolic Link List

1. addSnpt Espanso(スニペットを即座に展開)
2. alacritty Alacritty(Rust製ターミナル)
3. .zshrc (zsh Shell)
4. .tmux.conf (Alacrittyと共にTmuxをインストール)
5. .gitconfig (GitのGlobal設定)
6. starship (IMPORTANT!)(Rust製)

## Starship

今まで様々なzshフレームワークを使用してきた。
それぞれで、コマンドラインを装飾してきたが、最も効率的なものが、この **Starship** だ。
クロスプラットフォームであり、Mac, Linux, Windows, それぞれで使用できる。

## Espanso

例えば、


Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


上記の文章は有名なloremからはじまるテンプレートだが、これはEspansoを使用して展開している。


ex. 


```,,lorem```



また、下記のようにすると 2025/03/16 12:10 と、日付と時間が展開される。



```toml
,,today
```



Espansoはクロスプラットフォームであるので、ConfigファイルはWindows, Linuxでも使用可能である。

