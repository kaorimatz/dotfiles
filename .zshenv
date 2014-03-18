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
