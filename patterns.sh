#!/usr/bin/env bash
FI=$1
grep -ionf $HOME/writing-tools/patterns.txt $FI
