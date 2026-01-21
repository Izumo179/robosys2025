# robosys2025

[![test](https://github.com/Izumo179/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/Izumo179/robosys2025/actions/workflows/test.yml)

## コマンドの概要

boxtextは、標準入力から受け取った複数行のテキストを「＿人人人人＿」「￣Y^Y^Y^￣」のような枠で囲って強調表示するコマンドです．

ログの一部やメッセージを目立たせたいときに，簡単に強調表示できるように作りました．

## インストール方法

このコマンドは、Linux 環境（Ubuntu など）や WSL2 上で動作確認しています．

Python 3 がインストールされていることを前提としています.

GitHubのテストでは「Python3.6/3.7/3.8/3.9/3.10」の環境で正常に動作することが確認できています．

リポジトリをクローンして，実行権限を付けます．

```
$ git clone https://github.com/Izumo179/robosys2025.git
$ cd robosys2025
$ chmod +x boxtext
```

## 使い方の例

標準入力から強調したい文字列を渡します．

```console
$ printf "A\nBB\n" | ./boxtext

＿人人＿
＞ A  ＜
＞ BB ＜
￣Y^Y^￣
```


## テスト

動作確認用のテストは以下で実行できます．

```console
$ bash ./test.bash
```


## ライセンス等
  このプログラムはロボットシステム学課題1のために作成されたものです．
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部の書き方や構成は，下記の講義資料（CC-BY-SA 4.0 by Ryuichi Ueda）を参考にしたものです．
    - https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024
- 出力形式のアイデアとして，以下のサイトを参考にしました．
    - https://totuzennosi.sacnoha.com/#google_vignette
- © 2025 Soshi Ohseto
