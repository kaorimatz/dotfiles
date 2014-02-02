#!/bin/sh

set -e
set -u

dotfiles=$HOME/.dotfiles

has() {
  type "$1" > /dev/null 2>&1
}

symlink() {
  [ -e "$2" ] || ln -s "$1" "$2"
}

if [ -e "$dotfiles" ]; then
  git -C "$dotfiles" pull --rebase
else
  git clone https://github.com/kaorimatz/dotfiles "$dotfiles"
fi

has ack && symlink "$dotfiles/.ackrc" "$HOME/.ackrc"

has curl && symlink "$dotfiles/.curlrc" "$HOME/.curlrc"

symlink "$dotfiles/.dir_colors" "$HOME/.dir_colors"

has gem && symlink "$dotfiles/.gemrc" "$HOME/.gemrc"

has reply && symlink "$dotfiles/.replyrc" "$HOME/.replyrc"
