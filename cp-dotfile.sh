#!/bin/sh

OS=$1;

# 引数チェック
if [ "$OS" != "ubuntu" ] && [ "$OS" != "windows" ] && [ "$OS" != "mac" ]; then
  echo "エラー: 第1引数はをubuntu, windows, macのいずれかを指定してください"
  exit 1 
fi

# windowsの場合gitBashからの実行かを確認する
UNAME = "$(uname -s)"
if [ "$OS" = "windows" ]; then
  if [ "$UNAME" != "MINGW" ] && [ "$UNAME" != "MSYS" ] && [ "$UNAME" != "CYGWIN" ]; then
    echo "エラー: windowsの場合はgit bashから起動する必要があります"
    exit 1
  fi
fi

# 各種OSに合わせて設定ファイルを読み込む
sh "config/$OS-setting.sh"

# bash系のコマンドの設定
cp ./base/dotfile_sh.sh "$BASE_SH_PATH"
cp ./base/dotfile_bash.sh "$BASE_BASH_PATH"

