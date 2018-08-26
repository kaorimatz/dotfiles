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
" c.vim
"
highlight cStatement ctermfg=Cyan
highlight cStorageClass ctermfg=Cyan
highlight cStructure ctermfg=Cyan
highlight cType ctermfg=Red

"
" cs.vim
"
highlight csModifier ctermfg=Cyan
highlight csStorage ctermfg=Cyan
highlight csType ctermfg=Red

"
" kchmck/vim-coffee-script
"
highlight coffeeKeyword ctermfg=Cyan

"
" cpp.vim
"
highlight cppStatement ctermfg=Cyan

"
" diff.vim
"
highlight diffAdded ctermfg=Green
highlight diffChanged ctermfg=Blue
highlight diffRemoved ctermfg=Red

"
" elixir-lang/vim-elixir
"
highlight elixirBlockDefinition ctermfg=Cyan
highlight elixirInclude ctermfg=Cyan
highlight elixirStringDelimiter ctermfg=Yellow

"
" erlang.vim
"
highlight erlangAttribute ctermfg=Cyan
highlight erlangDefine ctermfg=Cyan
highlight erlangInclude ctermfg=Cyan
highlight erlangKeyword ctermfg=Cyan
highlight erlangPreCondit ctermfg=Cyan
highlight erlangRecordDef ctermfg=Cyan
highlight erlangType ctermfg=Cyan

"
" go.vim
"
highlight goComplexes ctermfg=Red
highlight goConstants ctermfg=Green
highlight goDeclType ctermfg=Cyan
highlight goDeclaration ctermfg=Cyan
highlight goDirective ctermfg=Cyan
highlight goFloats ctermfg=Red
highlight goLabel ctermfg=Cyan
highlight goSignedInts ctermfg=Red
highlight goStatement ctermfg=Cyan
highlight goType ctermfg=Red
highlight goUnsignedInts ctermfg=Red

"
" haskell.vim
"
highlight hsStructure ctermfg=Cyan
highlight hsImport ctermfg=Cyan
highlight hsStatement ctermfg=Cyan

"
" java.vim
"
highlight javaConstant ctermfg=Green
highlight javaExternal ctermfg=Cyan
highlight javaStatement ctermfg=Cyan
highlight javaStorageClass ctermfg=Cyan
highlight javaType ctermfg=Red

"
" javascript.vim
"
highlight javaScriptFunction ctermfg=Cyan
highlight javaScriptValue ctermfg=Green

"
" pangloss/vim-javascript
"
highlight jsFunction ctermfg=Cyan
highlight jsReturn ctermfg=Cyan
highlight jsStatement ctermfg=Cyan
highlight jsStorageClass ctermfg=Cyan

"
" php.vim
"
highlight phpStatement ctermfg=Cyan

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
highlight rubyKeyword ctermfg=Cyan
highlight rubySharpBang ctermfg=LightGray
highlight rubyStringDelimiter ctermfg=Yellow
highlight rubySymbol ctermfg=Yellow

"
" rust.vim
"
highlight rustKeyword ctermfg=Cyan
highlight rustStorage ctermfg=Cyan
highlight rustStructure ctermfg=Cyan
highlight rustType ctermfg=Red

"
" derekwyatt/vim-scala
"
highlight scalaKeyword ctermfg=Cyan
highlight scalaExternal ctermfg=Cyan

"
" sh.vim
"
highlight default link shCaseBar NONE
highlight default link shNumber NONE
highlight default link shTestOpr NONE
highlight shQuote ctermfg=Yellow
highlight shLoop ctermfg=Cyan
highlight shFunctionKey ctermfg=Cyan

"
" unite.vim
"
highlight default link uniteStatusNormal StatusLine
highlight default link uniteStatusHead StatusLine
highlight default link uniteStatusSourceNames StatusLine
highlight default link uniteStatusSourceCandidates StatusLine
highlight default link uniteStatusMessage StatusLine
highlight default link uniteStatusLineNR StatusLine
