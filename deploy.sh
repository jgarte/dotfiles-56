#!/usr/bin/env sh
for dir in $(fd -Ht d --exclude .git --strip-cwd-prefix); do
  mkdir -pv $HOME/$dir
done

for file in $(fd -Ht f --exclude .git --exclude deploy.sh --strip-cwd-prefix); do
  ln -sfv $(pwd)/$file $(pwd)/$HOME/$file
done
