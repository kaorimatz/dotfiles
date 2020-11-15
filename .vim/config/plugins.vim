if !isdirectory(expand('~/.vim/bundle/dein.vim'))
  finish
endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/dein.vim
endif

call dein#begin('~/.cache/dein')

"
" denite.nvim
"
call dein#add('Shougo/denite.nvim', {
      \   'if': has('nvim') && has('python3'),
      \   'on_cmd': 'Denite',
      \ })
if dein#tap('denite.nvim')
  function! g:dein#plugin.hook_source()
    call denite#custom#option('default', 'statusline', 0)
    call denite#custom#option('default', 'prompt', '>')
    call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
    call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
    call denite#custom#alias('source', 'file/rec/git', 'file/rec')
    call denite#custom#var('file/rec/git', 'command', ['git', 'ls-files'])
  endfunction
  nnoremap [denite] <Nop>
  nmap <Space>u [denite]
  noremap <silent> [denite]a :<C-u>Denite file/rec -start-filter<CR>
  noremap <silent> [denite]b :<C-u>Denite buffer -start-filter<CR>
  noremap <silent> [denite]g :<C-u>Denite file/rec/git -start-filter<CR>
  autocmd FileType denite call s:denite_key_mappings()
  function! s:denite_key_mappings() abort
    nnoremap <silent><buffer><expr> <C-m> denite#do_map('do_action')
    nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> q denite#do_map('quit')
  endfunction
endif

"
" deoplete.nvim
"
call dein#add('Shougo/deoplete.nvim', {
      \   'if': has('nvim') && has('python3'),
      \   'on_i': 1,
      \ })
if dein#tap('deoplete.nvim')
  function! g:dein#plugin.hook_source()
    let g:deoplete#enable_at_startup = 1
  endfunction
endif

"
" neocomplete.vim
"
call dein#add('Shougo/neocomplete.vim', {
      \   'depends': ['unite.vim', 'vimproc.vim'],
      \   'if': !has('nvim') && has('lua'),
      \   'on_i': 1,
      \ })
if dein#tap('neocomplete.vim')
  function! g:dein#plugin.hook_source()
    let g:neocomplete#enable_at_startup = 1
  endfunction
endif

"
" neomru.vim
"
call dein#add('Shougo/neomru.vim', {
      \   'depends': has('nvim') ? 'unite.vim' : 'denite.nvim',
      \ })
if dein#tap('neomru.vim')
  if has('nvim')
    noremap <silent> [denite]f :<C-u>Denite file_mru file file:new<CR>
  else
    noremap <silent> [unite]f :<C-u>Unite neomru/file file file/new<CR>
  endif
endif

"
" neosnippet-snippets
"
call dein#add('Shougo/neosnippet-snippets', {
      \   'lazy': 1,
      \ })

"
" neosnippet.vim
"
call dein#add('Shougo/neosnippet.vim', {
      \   'depends': [has('nvim') ? 'deoplete.nvim' : 'neocomplete.vim', 'neosnippet-snippets'],
      \   'on_cmd': 'NeoSnippetEdit',
      \   'on_i': 1,
      \ })
if dein#tap('neosnippet.vim')
  function! g:dein#plugin.hook_source()
    let g:neosnippet#snippets_directory = '~/.vim/snippets'
    imap <silent> <C-k> <Plug>(neosnippet_expand_or_jump)
    smap <silent> <C-k> <Plug>(neosnippet_expand_or_jump)
  endfunction
endif

"
" skk.vim
"
call dein#add('tyru/skk.vim', {
      \   'on_map': [
      \     ['ic', '<Plug>(skk-toggle-im)']
      \   ],
      \ })
if dein#tap('skk.vim')
  imap <C-j> <Plug>(skk-toggle-im)
  cmap <C-j> <Plug>(skk-toggle-im)
  function! g:dein#plugin.hook_source()
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
endif

"
" unite.vim
"
call dein#add('Shougo/unite.vim', {
      \   'depends': 'vimproc.vim',
      \   'if': !has('nvim'),
      \   'on_cmd': 'Unite',
      \ })
if dein#tap('unite.vim')
  function! g:dein#plugin.hook_source()
    call unite#custom#profile('default', 'context', {
          \   'cursor_line_highlight': 'PmenuSel',
          \ })
  endfunction
  nnoremap [unite] <Nop>
  nmap <Space>u [unite]
  noremap <silent> [unite]a :<C-u>Unite file_rec/async<CR>
  noremap <silent> [unite]b :<C-u>Unite buffer<CR>
  noremap <silent> [unite]g :<C-u>Unite file_rec/git<CR>
endif

"
" unite-outline
"
call dein#add('Shougo/unite-outline', {
      \   'depends': 'unite.vim',
      \   'if': !has('nvim'),
      \ })
if dein#tap('unite-outline')
  noremap <silent> [unite]o :<C-u>Unite outline<CR>
endif

"
" vim-coffee-script
"
call dein#add('kchmck/vim-coffee-script', {
      \   'on_ft': 'coffee',
      \ })

"
" vim-elixir
"
call dein#add('elixir-lang/vim-elixir', {
      \   'on_ft': ['eelixir', 'elixir'],
      \ })

"
" vim-go-extra
"
call dein#add('vim-jp/vim-go-extra', {
      \   'on_ft': 'go',
      \ })

"
" vim-javascript
"
call dein#add('pangloss/vim-javascript', {
      \   'on_ft': 'javascript',
      \ })

"
" vim-json
"
call dein#add('mitsuhiko/vim-json', {
      \   'on_ft': 'json',
      \ })

"
" vim-jsonnet
"
call dein#add('google/vim-jsonnet', {
      \   'on_ft': 'jsonnet',
      \ })

"
" vim-quickrun
"
call dein#add('thinca/vim-quickrun', {
      \   'depends': 'vimproc.vim',
      \   'on_cmd': 'QuickRun',
      \ })

"
" vim-scala
"
call dein#add('derekwyatt/vim-scala', {
      \   'on_ft': 'scala',
      \ })

"
" vimfiler.vim
"
call dein#add('Shougo/vimfiler.vim', {
      \   'depends': ['unite.vim', 'vimproc.vim'],
      \   'if': !has('nvim'),
      \   'on_path' : '.*',
      \ })
if dein#tap('vimfiler.vim')
  function! g:dein#plugin.hook_source()
    let g:vimfiler_as_default_explorer = 1
    let g:vimfiler_tree_leaf_icon = ' '
    let g:vimfiler_tree_closed_icon = '▸'
    let g:vimfiler_tree_opened_icon = '▾'
    let g:vimfiler_readonly_file_icon = '×'
  endfunction
endif

"
" vimproc.vim
"
call dein#add('Shougo/vimproc.vim', {
      \   'build' : 'make',
      \   'lazy': 1,
      \ })

call dein#end()
