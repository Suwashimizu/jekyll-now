---
layout: post
title: Databindingまとめ
tags:
- android

published: true
---

xmlのファイル名からBindingクラスが生成される。
add_edit_frag.xmlなら
AddEditFragBindingクラス
直感的な名前じゃないと
探すの手間どうかも

---

参考演算子を使うことができるので
簡単な分岐も可能

```
<TextView
   android:text="@{user.lastName}"
   android:layout_width="wrap_content"
   android:layout_height="wrap_content"
   android:visibility="@{user.isAdult ? View.VISIBLE : View.GONE}"/>
```

上のままだとView.VISIBLE が動かないので
xml内でimportを行う

```
<layout xmlns:android="http://schemas.android.com/apk/res/android">
   <data>
       <import type="android.view.View"/>
   </data>

   <TextView
      android:text="@{user.lastName}"
      android:layout_width="wrap_content"
      android:layout_height="wrap_content"
      android:visibility="@{user.isAdult ? View.VISIBLE : View.GONE}"/>
</layout>
```
