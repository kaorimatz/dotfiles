[ -d "$HOME/.cabal" ] && export PATH="$HOME/.cabal/bin:$PATH"

if type vim > /dev/null 2>&1; then
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
