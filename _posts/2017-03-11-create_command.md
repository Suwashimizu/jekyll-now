---
layout: post
title: createコマンドを作ったぞい
tags:
- shell

published: true
---

毎回テンプレートをコピペするのは非効率的なので
sh create.shで
yyyy-mm-dd-$title.mdでファイルを生成するようにした

以下使用したコマンド

`read var#キー入力を受け付け変数に入れる`

* [http://d.hatena.ne.jp/masa_edw/20080422/1208834378
](http://d.hatena.ne.jp/masa_edw/20080422/1208834378):変数の空文字チェック

```
if [ -n "$var" ]; then

fi
```

* 当日の日付+formatで出力+変数に格納

`var=`date +"%Y-%m-%d"``

* コピー

`cp srcFile dstFile`

シェルコマンドは大体覚えてないのでググりながら完成させた