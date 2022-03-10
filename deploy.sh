#!/usr/bin/env bash
# i have a manual home variable to test the deploy script
path=$(pwd)
home="$HOME"
XDG_CONFIG_HOME="$home/.config"
XDG_DATA_HOME="$home/.local/share"

helper() {
  mkdir -pv $1
  for file in $(find $2 -type f); do
    sleep 0.04
    [ -f $1/${file##*/} ] && rm -rfv $1/${file##*/}
    ln -sfv $path/$file $1/${file##*/}
  done
}

echo -e "\e[1m -- scripts \e[0m"
helper $home/.local/bin scripts

echo -e "\e[1m -- naked dots \e[0m"
# doing this manually just to save a lil bit of time
ln -sfv $path/.asoundrc $home/.asoundrc
ln -sfv $path/.gitconfig $home/.gitconfig
ln -sfv $path/.zshenv $home/.zshenv

echo -e "\e[1m -- desktop files \e[0m"
helper $XDG_DATA_HOME/applications misc/apps

echo -e "\e[1m -- text files \e[0m"
helper $XDG_DATA_HOME/txt misc/txt

echo -e "\e[1m -- configs \e[0m"
mkdir -pv $XDG_CONFIG_HOME
for dir in config/*; do
  sleep 0.02
  [ -d $XDG_CONFIG_HOME/${dir##*/} ] && rm -rfv $XDG_CONFIG_HOME/${dir##*/}
  case ${dir##*/} in
    spicetify)
      mkdir -pv $XDG_CONFIG_HOME/spicetify
      ln -sfv $path/$dir/Themes $XDG_CONFIG_HOME/${dir##*/}/Themes
    ;;
    *)
      ln -sfv $path/$dir $XDG_CONFIG_HOME/${dir##*/}
    ;;
  esac
done
