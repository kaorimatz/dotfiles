runtime config/plugins.vim

filetype plugin indent on
syntax on

colorscheme traditional

set backupdir=~/.vim/backup
set backupext=.bak
set completeopt=menu
set directory=~/.vim/swap
set expandtab
set fillchars=vert:\ 
if has('nvim')
  set fillchars+=eob:\ 
end
set guicursor=
set hlsearch
set ignorecase
set incsearch
set laststatus=1
set list
set listchars=tab:>-
set noruler
set nowildmenu
set nowrap
set shiftwidth=2
set smartcase
set softtabstop=-1
set undodir=~/.vim/undo
set undofile

if !isdirectory(&backupdir)
  call mkdir(&backupdir, 'p')
endif
if !isdirectory(&directory)
  call mkdir(&directory, 'p')
endif
if !isdirectory(&undodir)
  call mkdir(&undodir, 'p')
endif

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-f> <Right>
cnoremap <C-k> <C-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

let g:loaded_2html_plugin = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_netrwPlugin = 1
let g:loaded_rrhelper = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_vimballPlugin = 1
let g:ruby_no_expensive = 1
let g:ruby_no_special_methods = 1

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
