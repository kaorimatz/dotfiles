set guicursor=a:block-blinkon0-Cursor
set guioptions-=L
set guioptions-=r

if filereadable(expand('~/.gvimrc.local'))
  source ~/.gvimrc.local
endif
