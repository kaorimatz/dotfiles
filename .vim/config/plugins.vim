if !isdirectory(expand('~/.vim/bundle/neobundle.vim'))
  finish
endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin()

"
" neobundle.vim
"
NeoBundleFetch 'Shougo/neobundle.vim', {
      \   'depends': ['Shougo/unite.vim', 'Shougo/vimproc.vim'],
      \ }

"
" neocomplete.vim
"
NeoBundle 'Shougo/neocomplete.vim', {
      \   'depends': ['Shougo/unite.vim', 'Shougo/vimproc.vim'],
      \   'vim_version': '7.3.885',
      \   'disabled': !has('lua'),
      \   'on_i': 1,
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
NeoBundle 'Shougo/neosnippet.vim', {
      \   'depends': ['Shougo/neocomplete.vim', 'Shougo/neosnippet-snippets'],
      \   'on_cmd': 'NeoSnippetEdit',
      \   'on_i': 1,
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
NeoBundle 'tyru/skk.vim', {
      \   'on_map': [
      \     ['ic', '<Plug>(skk-toggle-im)']
      \   ],
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
NeoBundle 'scrooloose/syntastic', {
      \   'on_cmd': 'SyntasticCheck',
      \   'on_ft': 'sh',
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
NeoBundle 'Shougo/unite.vim', {
      \   'depends': 'Shougo/vimproc.vim',
      \   'on_cmd': {
      \     'name': 'Unite',
      \     'complete': 'customlist,unite#complete#source',
      \   },
      \ }
if neobundle#tap('unite.vim')
  function! neobundle#tapped.hooks.on_source(bundle)
    call unite#custom#profile('default', 'context', {
          \   'cursor_line_highlight': 'PmenuSel',
          \ })
  endfunction
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
NeoBundle 'kaorimatz/unite-cpan-module', {
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
NeoBundle 'Shougo/unite-outline', {
      \   'depends': 'Shougo/unite.vim',
      \   'external_commands': 'ctags',
      \ }
if neobundle#tap('unite-outline')
  noremap <silent> [unite]o :<C-u>Unite outline<CR>
  call neobundle#untap()
endif

"
" vim-coffee-script
"
NeoBundle 'kchmck/vim-coffee-script', {
      \   'on_ft': 'coffee',
      \ }

"
" vim-easy-align
"
NeoBundle 'junegunn/vim-easy-align', {
      \   'on_map': [
      \     ['x', '<Plug>(EasyAlign)']
      \   ],
      \ }
if neobundle#tap('vim-easy-align')
  xmap ga <Plug>(EasyAlign)
endif

"
" vim-elixir
"
NeoBundle 'elixir-lang/vim-elixir', {
      \   'on_ft': ['eelixir', 'elixir'],
      \ }

"
" vim-go-extra
"
NeoBundle 'vim-jp/vim-go-extra', {
      \   'on_ft': 'go',
      \ }

"
" vim-javascript
"
NeoBundle 'pangloss/vim-javascript', {
      \   'vim_version': '7.4.7',
      \   'on_ft': 'javascript',
      \ }

"
" vim-json
"
NeoBundle 'mitsuhiko/vim-json', {
      \   'on_ft': 'json',
      \ }

"
" vim-jsonnet
"
NeoBundle 'google/vim-jsonnet', {
      \   'on_ft': 'jsonnet',
      \ }

"
" vim-quickrun
"
NeoBundle 'thinca/vim-quickrun', {
      \   'depends': 'Shougo/vimproc.vim',
      \   'on_cmd': 'QuickRun',
      \ }

"
" vim-scala
"
NeoBundleLazy 'derekwyatt/vim-scala', {
      \   'on_ft': 'scala',
      \ }

"
" vim-template
"
NeoBundle 'thinca/vim-template'

"
" vimfiler.vim
"
NeoBundle 'Shougo/vimfiler.vim', {
      \   'depends': ['Shougo/unite.vim', 'Shougo/vimproc.vim'],
      \   'on_path' : '.*',
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
NeoBundle 'vimperator/vimperator.vim', {
      \   'on_ft': 'vimperator',
      \ }

"
" vimproc.vim
"
NeoBundle 'Shougo/vimproc.vim', {
      \   'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \   },
      \ }

call neobundle#end()
