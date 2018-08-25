#!/bin/sh

set -e
set -u

dotfiles=$HOME/.dotfiles

has() {
  type "$1" > /dev/null 2>&1
}

has_app() {
  [ "`uname -s`" = Darwin ] && osascript <<EOF > /dev/null 2>&1
tell application "Finder" to return name of application file id "$1"
EOF
}

symlink() {
  [ -e "$2" ] || [ -e "$2".norc ] || {
    mkdir -p "`dirname $2`"
    ln -s "$1" "$2"
  }
}

if [ -d "$dotfiles" ]; then
  (cd "$dotfiles" && git pull --ff-only)
else
  git clone https://github.com/kaorimatz/dotfiles "$dotfiles"
fi

symlink "$dotfiles/.dir_colors" "$HOME/.dir_colors"

if has firefox || has_app org.mozilla.firefox; then
  symlink "$dotfiles/.vimperatorrc" "$HOME/.vimperatorrc"
  symlink "$dotfiles/.vimperatorrc.js" "$HOME/.vimperatorrc.js"
  symlink "$dotfiles/.vimperator/colors/traditional.vimp" "$HOME/.vimperator/colors/traditional.vimp"
  symlink "$dotfiles/.vimperator/config/plugins.js" "$HOME/.vimperator/config/plugins.js"
fi

has gem && symlink "$dotfiles/.gemrc" "$HOME/.gemrc"

if has git; then
  symlink "$dotfiles/.gitconfig" "$HOME/.gitconfig"
  symlink "$dotfiles/.gitignore_global" "$HOME/.gitignore_global"
fi

has gvim && symlink "$dotfiles/.gvimrc" "$HOME/.gvimrc"

has hg && symlink "$dotfiles/.hgrc" "$HOME/.hgrc"

has irb && symlink "$dotfiles/.irbrc" "$HOME/.irbrc"

has lv && symlink "$dotfiles/.lv" "$HOME/.lv"

has peco && symlink "$dotfiles/.peco/config.json" "$HOME/.peco/config.json"

has percol && symlink "$dotfiles/.percol.d/rc.py" "$HOME/.percol.d/rc.py"

has python && symlink "$dotfiles/.pystartup" "$HOME/.pystartup"

has reply && symlink "$dotfiles/.replyrc" "$HOME/.replyrc"

has tmux && symlink "$dotfiles/.tmux.conf" "$HOME/.tmux.conf"

has twm && symlink "$dotfiles/.twmrc" "$HOME/.twmrc"

has vagrant && symlink "$dotfiles/.vagrant.d/Vagrantfile" "$HOME/.vagrant.d/Vagrantfile"

if has vim; then
  symlink "$dotfiles/.vimrc" "$HOME/.vimrc"
  symlink "$dotfiles/.vim" "$HOME/.vim"
  mkdir -p "$HOME/.vim/undo"
fi

has weechat && symlink "$dotfiles/.weechat/startup" "$HOME/.weechat/startup"

if has zsh; then
  symlink "$dotfiles/.zprofile" "$HOME/.zprofile"
  symlink "$dotfiles/.zshenv" "$HOME/.zshenv"
  symlink "$dotfiles/.zshrc" "$HOME/.zshrc"
fi
