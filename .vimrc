filetype plugin indent on
syntax on

set ignorecase
set list
set listchars=tab:>-
set smartcase

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

autocmd vimrc FileType markdown setlocal expandtab
autocmd vimrc FileType markdown setlocal softtabstop=4

autocmd vimrc FileType perl setlocal expandtab
autocmd vimrc FileType perl setlocal softtabstop=4

autocmd vimrc FileType python setlocal expandtab
autocmd vimrc FileType python setlocal softtabstop=4

autocmd vimrc FileType ruby setlocal expandtab
autocmd vimrc FileType ruby setlocal softtabstop=2

autocmd vimrc FileType vim setlocal expandtab
autocmd vimrc FileType vim setlocal softtabstop=2

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
