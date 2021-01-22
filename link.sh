#!/bin/bash

# USAGE: ./link.sh ./SlackManyMuscle.scpt
# AppleScript の保存場所にリンクを作成する

set -eu

TARGET_FILE=$(echo $1|cut -d"/" -f 2)

FROM="$HOME/.applescripts/$TARGET_FILE"
DIST="$HOME/Library/Mobile Documents/com~apple~ScriptEditor2/Documents/$TARGET_FILE"

ln -s "$FROM" "$DIST"
