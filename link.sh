#!/bin/bash

# USAGE: ./link.sh ./SlackManyMuscle.scpt
# AppleScript の保存場所にリンクを作成する

set -eu

DIST_FILE=$(echo $1|cut -d"/" -f 2)

FROM="$HOME/.applescripts/$DIST_FILE"
DIST="$HOME/Library/Mobile Documents/com~apple~ScriptEditor2/Documents/$DIST_FILE"

ln -s "$FROM" "$DIST"
