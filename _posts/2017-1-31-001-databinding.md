---
layout: post
title: databindingはじめました
tags:
- android

published: true
---

databiding

layoutにxmlns:tools="http://schemas.android.com/tools"を入れると
ビルドエラーが起きる
xmlns:android="http://schemas.android.com/apk/res/android"のみ入れよう


```
<layout xmlns:tools="http://schemas.android.com/tools"
    xmlns:android="http://schemas.android.com/apk/res/android">

    <data>

        <variable
            name="bbs_list"
            type="jp.co.micgp.jplus_android.view.model.bbs_list.BbsListViewModel" />

        <variable
            name="handler"
            type="jp.co.micgp.jplus_android.view.model.bbs_list.BbsListViewModel.BbsListModelHandler" />
    </data>
    ~~~
</layout>
```

### 更新でViewがちらつくの！

recyclerViewとDatabidingを紐付けた時に発生

onBind時に以下を呼べば抑制できる。
`mBinding.executePendingBindings();`