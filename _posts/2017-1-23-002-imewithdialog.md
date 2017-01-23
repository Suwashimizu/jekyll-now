
---
layout: post
title: Dialog生成時にIMEを表示する
tags:
- android

published: true
---

テキスト入力時はIME出した方が親切
手順が特殊だったのでメモ


```
//一度インスタンスを確保する必要がある
val dialog = AlertDialog.Builder(this).create

dialog.window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE)
```
