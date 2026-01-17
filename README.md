# robosys2025

[![test](https://github.com/Izumo179/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/Izumo179/robosys2025/actions/workflows/test.yml)

## コマンドの概要

plus は、標準入力から受け取った複数行のテキストを「＿人人人人＿」「￣Y^Y^Y^￣」のような枠で囲って強調表示するコマンドです。

ログの一部やメッセージを目立たせたいときに、シェルスクリプトの中から簡単に使えるように作りました。

## インストール方法

このコマンドは、Linux 環境（Ubuntu など）や WSL2 上で動作確認しています．

Python 3 がインストールされていることを前提としています.

git hubのテストでは「Python3.6/3.7/3.8/3.9/3.10」の環境で正常に動作することが確認できています．

リポジトリをクローンして，実行権限を付けます．

```
$ git clone https://github.com/Izumo179/robosys2025.git
$ cd robosys2025
$ chmod +x plus
```

## 使い方の例

下記のように強調したい文字又は文を入力してください．

```
$ printf "A\nBB\n" | ./plus
```

"出力"

``` 
＿人人＿
＞ A  ＜
＞ BB ＜
￣Y^Y^￣
```

上記のように入力した文字が強調されます．


## テストの実行方法
このリポジトリには，plusコマンドの動作を確認するためのテストスクリプトtest.bashが含まれています．

ローカル環境でテストを実行するには，リポジトリ直下で次のコマンドを実行します．

```
$ bash ./test.bash
```

"テスト成功時の出力"

```
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
    - (https://totuzennosi.sacnoha.com/#google_vignette)
- © 2025 Soshi Ohseto
