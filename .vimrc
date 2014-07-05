runtime config/plugins.vim

filetype plugin indent on
syntax on

set ignorecase
set list
set listchars=tab:>-
set smartcase
set undodir=~/.vimundo
set undofile

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-f> <Right>
cnoremap <C-k> <C-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>

augroup vimrc
  autocmd!
augroup END

function! s:set_indent(spaces)
  setlocal expandtab
  execute 'setlocal shiftwidth=' . a:spaces
  execute 'setlocal softtabstop=' . a:spaces
endfunction

autocmd vimrc FileType html call s:set_indent(2)
autocmd vimrc FileType java call s:set_indent(4)
autocmd vimrc FileType javascript call s:set_indent(2)
autocmd vimrc FileType markdown call s:set_indent(4)
autocmd vimrc FileType perl call s:set_indent(4)
autocmd vimrc FileType python call s:set_indent(4)
autocmd vimrc FileType ruby call s:set_indent(2)
autocmd vimrc FileType sh call s:set_indent(2)
autocmd vimrc FileType vim call s:set_indent(2)

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
