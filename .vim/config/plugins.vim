if !isdirectory(expand('~/.vim/bundle/neobundle.vim'))
  finish
endif

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin()

"
" vim-go-extra
"
NeoBundleLazy 'vim-jp/vim-go-extra', {
      \   'autoload': {
      \     'filetypes': 'go',
      \   },
      \ }

"
" neobundle.vim
"
NeoBundleFetch 'Shougo/neobundle.vim', {
      \   'depends': ['Shougo/unite.vim', 'Shougo/vimproc.vim'],
      \ }

"
" neocomplete.vim
"
NeoBundleLazy 'Shougo/neocomplete.vim', {
      \   'depends': ['Shougo/unite.vim', 'Shougo/vimproc.vim'],
      \   'vim_version': '7.3.885',
      \   'disabled': !has('lua'),
      \   'autoload': {
      \     'insert': 1,
      \   },
      \ }
if neobundle#tap('neocomplete.vim')
  function! neobundle#tapped.hooks.on_source(bundle)
    let g:neocomplete#enable_at_startup = 1
  endfunction
  call neobundle#untap()
endif

"
" neomru.vim
"
NeoBundle 'Shougo/neomru.vim', {
      \   'depends': 'Shougo/unite.vim',
      \ }
if neobundle#tap('neomru.vim')
  noremap <silent> [unite]d :<C-u>Unite -default-action=lcd neomru/directory directory directory/new<CR>
  noremap <silent> [unite]f :<C-u>Unite neomru/file file file/new<CR>
  call neobundle#untap()
endif

"
" neosnippet.vim
"
NeoBundleLazy 'Shougo/neosnippet.vim', {
      \   'depends': ['Shougo/neocomplete.vim', 'Shougo/neosnippet-snippets'],
      \   'autoload': {
      \     'commands': 'NeoSnippetEdit',
      \     'insert': 1,
      \   },
      \ }
if neobundle#tap('neosnippet.vim')
  function! neobundle#tapped.hooks.on_source(bundle)
    let g:neosnippet#snippets_directory = '~/.vim/snippets'
    imap <silent> <C-k> <Plug>(neosnippet_expand_or_jump)
    smap <silent> <C-k> <Plug>(neosnippet_expand_or_jump)
  endfunction
  call neobundle#untap()
endif

"
" skk.vim
"
NeoBundleLazy 'tyru/skk.vim', {
      \   'autoload': {
      \     'mappings': [
      \       ['ic', '<Plug>(skk-toggle-im)'],
      \     ],
      \   },
      \ }
if neobundle#tap('skk.vim')
  imap <C-j> <Plug>(skk-toggle-im)
  cmap <C-j> <Plug>(skk-toggle-im)
  function! neobundle#tapped.hooks.on_source(bundle)
    if has('mac')
      let g:skk_large_jisyo = '~/Library/Application Support/AquaSKK/SKK-JISYO.L'
    elseif has('unix')
      let g:skk_large_jisyo = '/usr/share/skk/SKK-JISYO.L'
    endif
    let g:skk_auto_save_jisyo = 1
    let g:skk_keep_state = 1
    let g:skk_manual_save_jisyo_keys = ''
    let g:skk_marker_black = '▾'
    let g:skk_marker_white = '▿'
  endfunction
  call neobundle#untap()
endif

"
" syntastic
"
NeoBundleLazy 'scrooloose/syntastic', {
      \   'autoload': {
      \     'commands': 'SyntasticCheck',
      \     'filetypes': 'sh',
      \   },
      \ }
if neobundle#tap('syntastic')
  function! neobundle#tapped.hooks.on_source(bundle)
    let g:syntastic_mode_map = {
          \   'mode': 'passive',
          \ }
  endfunction
  call neobundle#untap()
endif

"
" unite.vim
"
NeoBundleLazy 'Shougo/unite.vim', {
      \   'depends': 'Shougo/vimproc.vim',
      \   'autoload': {
      \     'commands': {
      \       'name': 'Unite',
      \       'complete': 'customlist,unite#complete#source',
      \     },
      \   },
      \ }
if neobundle#tap('unite.vim')
  nnoremap [unite] <Nop>
  nmap <Space>u [unite]
  noremap <silent> [unite]a :<C-u>Unite file_rec/async<CR>
  noremap <silent> [unite]b :<C-u>Unite buffer<CR>
  noremap <silent> [unite]g :<C-u>Unite file_rec/git<CR>
  call neobundle#untap()
endif

"
" unite-cpan-module
"
NeoBundleLazy 'kaorimatz/unite-cpan-module', {
      \   'depends': 'Shougo/unite.vim',
      \ }
if neobundle#tap('unite-cpan-module')
  function! neobundle#tapped.hooks.on_source(bundle)
    highlight uniteSource__CpanModule_Date ctermfg=Green
    highlight uniteSource__CpanModule_Author ctermfg=Red
  endfunction
  call neobundle#untap()
endif

"
" unite-outline
"
NeoBundleLazy 'Shougo/unite-outline', {
      \   'depends': 'Shougo/unite.vim',
      \   'external_commands': 'ctags',
      \ }
if neobundle#tap('unite-outline')
  noremap <silent> [unite]o :<C-u>Unite outline<CR>
  call neobundle#untap()
endif

"
" vim-javascript
"
NeoBundleLazy 'pangloss/vim-javascript', {
      \   'vim_version': '7.4.7',
      \   'autoload': {
      \     'filetypes': 'javascript',
      \   },
      \ }

"
" vim-quickrun
"
NeoBundleLazy 'thinca/vim-quickrun', {
      \   'depends': 'Shougo/vimproc.vim',
      \   'autoload': {
      \     'commands': 'QuickRun',
      \   },
      \ }

"
" vim-template
"
NeoBundle 'thinca/vim-template'

"
" vimfiler.vim
"
NeoBundleLazy 'Shougo/vimfiler.vim', {
      \   'depends': ['Shougo/unite.vim', 'Shougo/vimproc.vim'],
      \   'autoload': {
      \     'explorer': 1,
      \   },
      \ }
if neobundle#tap('vimfiler.vim')
  function! neobundle#tapped.hooks.on_source(bundle)
    let g:vimfiler_as_default_explorer = 1
    let g:vimfiler_tree_leaf_icon = ' '
    let g:vimfiler_tree_closed_icon = '▸'
    let g:vimfiler_tree_opened_icon = '▾'
    let g:vimfiler_readonly_file_icon = '×'
  endfunction
  call neobundle#untap()
endif

"
" vimperator
"
NeoBundleLazy 'http://code.google.com/p/vimperator-labs', {
      \   'type': 'hg',
      \   'rtp': 'vimperator/contrib/vim',
      \   'autoload': {
      \     'filetypes': 'vimperator',
      \   },
      \ }

"
" vimproc.vim
"
NeoBundleLazy 'Shougo/vimproc.vim', {
      \   'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \   },
      \ }

call neobundle#end()
