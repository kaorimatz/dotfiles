let g:colors_name = expand('<sfile>:t:r')
set background=dark
highlight clear

"
" default
"
highlight StatusLine ctermfg=DarkGray ctermbg=Yellow
highlight StatusLineNC ctermfg=DarkGray ctermbg=Yellow
highlight VertSplit ctermfg=DarkGray ctermbg=DarkGray
highlight ColorColumn cterm=reverse ctermfg=LightGray ctermbg=NONE
highlight Pmenu cterm=NONE ctermfg=Yellow ctermbg=DarkGray
highlight PmenuSbar cterm=NONE ctermfg=NONE ctermbg=DarkGray
highlight PmenuSel cterm=reverse ctermfg=Yellow ctermbg=NONE
highlight PmenuThumb cterm=NONE ctermfg=NONE ctermbg=LightGray
highlight TabLine cterm=NONE ctermfg=Yellow ctermbg=DarkGray
highlight TabLineFill cterm=NONE ctermfg=Yellow ctermbg=DarkGray
highlight TabLineSel cterm=reverse ctermfg=Yellow ctermbg=DarkGray
highlight Title ctermfg=NONE
highlight IncSearch cterm=reverse ctermfg=Magenta ctermbg=NONE
highlight Search cterm=underline ctermfg=Magenta ctermbg=NONE
highlight NonText ctermfg=LightGray
highlight SpecialKey ctermfg=LightGray
highlight Directory cterm=underline ctermfg=NONE ctermbg=NONE
highlight LineNr ctermfg=LightGray
highlight CursorLineNr ctermfg=NONE
highlight Folded ctermfg=LightGray ctermbg=NONE
highlight FoldColumn ctermfg=LightGray ctermbg=NONE
highlight DiffAdd cterm=underline ctermfg=Green ctermbg=NONE
highlight DiffChange cterm=underline ctermfg=Blue ctermbg=NONE
highlight DiffDelete cterm=underline ctermfg=Red ctermbg=NONE
highlight DiffText cterm=reverse ctermfg=Blue ctermbg=NONE
highlight SignColumn ctermfg=LightGray ctermbg=NONE
highlight Conceal cterm=NONE ctermfg=NONE ctermbg=NONE
highlight SpellBad cterm=underline ctermfg=Red ctermbg=NONE
highlight SpellCap cterm=underline ctermfg=Yellow ctermbg=NONE
highlight SpellRare cterm=underline ctermfg=Yellow ctermbg=NONE
highlight SpellLocal cterm=underline ctermfg=Yellow ctermbg=NONE
highlight MatchParen cterm=underline ctermfg=Magenta ctermbg=NONE
highlight ErrorMsg cterm=NONE ctermfg=Red ctermbg=NONE
highlight MoreMsg cterm=NONE ctermfg=NONE
highlight ModeMsg cterm=NONE ctermfg=NONE
highlight Question ctermfg=Blue

"
" syncolor.vim
"
highlight Comment ctermfg=LightGray
highlight Constant ctermfg=NONE
highlight String ctermfg=Yellow
highlight Character ctermfg=Yellow
highlight Number ctermfg=Green
highlight Boolean ctermfg=Green
highlight Special ctermfg=NONE
highlight Identifier ctermfg=NONE
highlight Statement ctermfg=NONE
highlight Conditional ctermfg=Cyan
highlight Repeat ctermfg=Cyan
highlight Exception ctermfg=Cyan
highlight PreProc ctermfg=NONE
highlight Type ctermfg=NONE
highlight Underlined ctermfg=NONE
highlight Error cterm=underline ctermfg=Red ctermbg=NONE
highlight Todo cterm=underline ctermfg=Yellow ctermbg=NONE

"
" diff.vim
"
highlight diffAdded ctermfg=Green
highlight diffChanged ctermfg=Blue
highlight diffRemoved ctermfg=Red

"
" erlang.vim
"
highlight erlangKeyword ctermfg=Cyan

"
" go.vim
"
highlight goDeclType ctermfg=Cyan
highlight goDeclaration ctermfg=Cyan
highlight goDirective ctermfg=Cyan

"
" haskell.vim
"
highlight hsStructure ctermfg=Cyan
highlight hsImport ctermfg=Cyan
highlight hsStatement ctermfg=Cyan

"
" java.vim
"
highlight javaExternal ctermfg=Cyan
highlight javaStorageClass ctermfg=Cyan

"
" javascript.vim
"
highlight javaScriptFunction ctermfg=Cyan
highlight javaScriptValue ctermfg=Green

"
" pangloss/vim-javascript
"
highlight jsStorageClass ctermfg=Cyan
highlight jsFunction ctermfg=Cyan
highlight jsReturn ctermfg=Cyan

"
" python.vim
"
highlight pythonInclude ctermfg=Cyan
highlight pythonStatement ctermfg=Cyan

"
" ruby.vim
"
highlight rubyControl ctermfg=Cyan
highlight rubyDefine ctermfg=Cyan
highlight rubyStringDelimiter ctermfg=Yellow
