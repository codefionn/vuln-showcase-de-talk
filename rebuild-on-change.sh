#!/usr/bin/env bash
cd "$(dirname $0)"
while (inotifywait -e modify -e close_write -t 0 ./pres.tex || exit 0)
do
  echo "--- Running build script ---"
  make
done
