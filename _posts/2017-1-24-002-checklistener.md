---
layout: post
title: RecyclerView内のsetOnCheckedChangeListenerの罠
tags:
- android

published: true
---

ListViewでも同じこと起きそう

ListのItemにCheckboxがあるケースで
setOnCheckedChangeListenerを使い
checkが変更されたら要素を更新したい時にハマった。

checkBoxにsetOnCheckedChangeListenerをセットすれば
変化したときにListnerが呼ばれるが
bind時にCheckboxへ値を入れても
Listnerが呼ばれるため
無限ループが発生する

そのため
onBindViewHolderで
Listenerを一度解除しなければならなかった
(パフォーマンス悪そう)

```
checkbox.setOnCheckedChangeListener(null)
//do bind
checkbox.setOnCheckedChangeListener(new listener)
```



