[ -d "$HOME/.cabal" ] && export PATH="$HOME/.cabal/bin:$PATH"
[ -f "$HOME/.pystartup" ] && export PYTHONSTARTUP="$HOME/.pystartup"

if type nvim > /dev/null 2>&1; then
  EDITOR=nvim
elif type vim > /dev/null 2>&1; then
  EDITOR=vim
else
  EDITOR=vi
fi
export EDITOR

if type lv > /dev/null 2>&1; then
  PAGER=lv
else
  PAGER=less
fi
export PAGER

if [ -r ~/.zshenv.local ]; then
  . ~/.zshenv.local
fi
