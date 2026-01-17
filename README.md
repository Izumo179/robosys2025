# robosys2025

[![test](https://github.com/Izumo179/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/Izumo179/robosys2025/actions/workflows/test.yml)

## コマンドの概要

boxtextは、標準入力から受け取った複数行のテキストを「＿人人人人＿」「￣Y^Y^Y^￣」のような枠で囲って強調表示するコマンドです。

ログの一部やメッセージを目立たせたいときに、シェルスクリプトの中から簡単に使えるように作りました。

## インストール方法

このコマンドは、Linux 環境（Ubuntu など）や WSL2 上で動作確認しています．

Python 3 がインストールされていることを前提としています.

GitHubのテストでは「Python3.6/3.7/3.8/3.9/3.10」の環境で正常に動作することが確認できています．

リポジトリをクローンして，実行権限を付けます．

```
$ git clone https://github.com/Izumo179/robosys2025.git
$ cd robosys2025
$ chmod +x textbox
```

## 使い方の例

標準入力から強調したい文字列を渡します．

```console
$ printf "A\nBB\n" | ./textbox

＿人人＿
＞ A  ＜
＞ BB ＜
￣Y^Y^￣
```


## テストの実行方法
このリポジトリには，textboxコマンドの動作を確認するためのテストスクリプトtest.bashが含まれています．

ローカル環境でテストを実行するには，リポジトリ直下で次のコマンドを実行します．

```console
$ bash ./test.bash

テスト1 クリア！
テスト2 クリア！
テスト3 クリア！
全部OK！
```

テストに成功すると上記のように出力されます．


## ライセンス等
  このプログラムはロボットシステム学課題1のために作成されたものです．
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部の書き方や構成は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）を参考にしたものです．
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys_2025)
- このパッケージは文字を強調したいという構想の元，下記のサイトの強調を参考にプログラムしたものです．
    - https://totuzennosi.sacnoha.com/#google_vignette
- © 2025 Soshi Ohseto
