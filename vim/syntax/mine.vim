" highlight clear
" if exists("g:syntax_on")
  " syntax reset
" endif

" let colors_name = "comments"

" Syntax highlighting (other color-groups using default, see :help
" group-name):
hi Constant   cterm=NONE ctermfg=black
hi Identifier cterm=NONE ctermfg=black
hi Function   cterm=NONE ctermfg=black
hi Statement  cterm=bold ctermfg=black
hi PreProc    cterm=NONE ctermfg=black
hi Type      cterm=bold ctermfg=black
hi Special    cterm=NONE ctermfg=black
hi Delimiter  cterm=NONE ctermfg=black
hi Include cterm=bold ctermfg=black
hi Typedef   cterm=bold ctermfg=black
hi Conditional cterm=bold ctermfg=black
hi Keyword cterm=bold ctermfg=black
hi Label cterm=bold ctermfg=black
hi Comment cterm=italic ctermfg=239
hi SpecialComment cterm=italic ctermfg=239
hi Todo ctermbg=4 cterm=italic ctermfg=white

hi LineNr ctermfg=grey
hi CursorLineNr ctermfg=red
hi CursorLine cterm=NONE
hi MatchParen ctermbg=red ctermfg=white
hi SignColumn ctermbg=NONE
hi VertSplit ctermbg=white ctermfg=235
hi StatusLine ctermfg=235 
hi StatusLineNC ctermfg=235
hi Directory ctermfg=4
hi MoreMsg ctermfg=2
hi Question ctermfg=10
hi WarningMsg ctermfg=9
hi Title ctermfg=magenta
hi Search ctermbg=red ctermfg=black
hi WildMenu ctermfg=4
hi SpecialKey ctermfg=12 
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel ctermbg=4 ctermfg=black
hi Visual ctermbg=black ctermfg=white
hi EndOfBuffer ctermfg=235
hi TabLineFill ctermfg=235 
hi TabLine ctermfg=grey ctermbg=235 cterm=none
hi TabLineSel ctermfg=black ctermbg=darkgrey cterm=bold
hi Title ctermfg=grey

