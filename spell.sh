#!/usr/bin/env sh

FI=$1
echo "num spelling mistakes $(cat $FI | aspell list | wc -l)"
echo "spelling mistakes:"
MISTAKES="$(cat $FI | aspell list)"
echo $MISTAKES
