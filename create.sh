# /bin/sh

echo Titleを入力してください
# キー入力待ち
read title

# 空文字チェック,空文字でなければtrue
if [ -n "$title" ]; then
   # 日付を変数に格納
   to_day=`date +"%Y-%m-%d"`
   echo $to_day-$title.mdを作成しました
   # fileの作成
   cp template.txt _posts/$to_day-$title.md
fi