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
  (cd "$dotfiles" && git pull --rebase)
else
  git clone https://github.com/kaorimatz/dotfiles "$dotfiles"
fi

has ack && symlink "$dotfiles/.ackrc" "$HOME/.ackrc"

has curl && symlink "$dotfiles/.curlrc" "$HOME/.curlrc"

symlink "$dotfiles/.dir_colors" "$HOME/.dir_colors"

has gem && symlink "$dotfiles/.gemrc" "$HOME/.gemrc"

has git && symlink "$dotfiles/.gitconfig" "$HOME/.gitconfig"

has reply && symlink "$dotfiles/.replyrc" "$HOME/.replyrc"

has tmux && symlink "$dotfiles/.tmux.conf" "$HOME/.tmux.conf"

has vim && symlink "$dotfiles/.vimrc" "$HOME/.vimrc"

has zsh && symlink "$dotfiles/.zshenv" "$HOME/.zshenv"
