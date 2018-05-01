#!/bin/sh
OutPutError() {
  echo “${1}”
  exit 1
}

#masterブランチは弾く
if [ $1 == "master" ]; then
  OutPutError "$1は選択できません"
fi

#前回までの成果物を事前に消す
rm -f *.zip
rm -f *.sql

#パス指定がされていなかったらその時点で終了
if [ -z $2  ]; then
  OutPutError  "`buildPathsが指定されていません。`"
fi

