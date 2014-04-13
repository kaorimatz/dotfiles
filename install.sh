#!/bin/sh

set -e
set -u

dotfiles=$HOME/.dotfiles

has() {
  type "$1" > /dev/null 2>&1
}

has_app() {
  [ `uname -s` = Darwin ] && osascript <<EOF > /dev/null 2>&1
tell application "Finder" to return name of application file id "$1"
EOF
}

symlink() {
  [ -e "$2" ] || ln -s "$1" "$2"
}

if [ -d "$dotfiles" ]; then
  (cd "$dotfiles" && git pull --rebase)
else
  git clone https://github.com/kaorimatz/dotfiles "$dotfiles"
fi

has ack && symlink "$dotfiles/.ackrc" "$HOME/.ackrc"

has curl && symlink "$dotfiles/.curlrc" "$HOME/.curlrc"

symlink "$dotfiles/.dir_colors" "$HOME/.dir_colors"

if has firefox || has_app org.mozilla.firefox; then
  symlink "$dotfiles/.vimperatorrc" "$HOME/.vimperatorrc"
  symlink "$dotfiles/.vimperatorrc.js" "$HOME/.vimperatorrc.js"
fi

has gem && symlink "$dotfiles/.gemrc" "$HOME/.gemrc"

has git && symlink "$dotfiles/.gitconfig" "$HOME/.gitconfig"

has lv && symlink "$dotfiles/.lv" "$HOME/.lv"

has reply && symlink "$dotfiles/.replyrc" "$HOME/.replyrc"

has tmux && symlink "$dotfiles/.tmux.conf" "$HOME/.tmux.conf"

has twm && symlink "$dotfiles/.twmrc" "$HOME/.twmrc"

if has vim; then
  symlink "$dotfiles/.vimrc" "$HOME/.vimrc"
  mkdir -p "$HOME/.vim"
  symlink "$dotfiles/.vim/filetype.vim" "$HOME/.vim/filetype.vim"
fi

has zsh && symlink "$dotfiles/.zprofile" "$HOME/.zprofile"
has zsh && symlink "$dotfiles/.zshenv" "$HOME/.zshenv"
has zsh && symlink "$dotfiles/.zshrc" "$HOME/.zshrc"
