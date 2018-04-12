""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DEIN

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/dlucsanszky/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/dlucsanszky/.vim/')
  call dein#begin('/Users/dlucsanszky/.vim/')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/dlucsanszky/.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('neomake/neomake')
  call dein#add('junegunn/fzf.vim')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('Quramy/tsuquyomi')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()

  if !exists("g:gui_oni")
    call dein#save_state()
  endif
endif

" Required:
filetype plugin indent on
if !exists ("g:syntax_on")
  syntax enable
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL

filetype on
set encoding=utf-8
let mapleader = " "

set backspace=2
set nocompatible
set showcmd
set number
set cursorline
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set laststatus=2

let g:airline_theme='kyloraven'
let g:airline_powerline_fonts = 1

set completeopt=menuone,menu,longest
set omnifunc=syntaxcomplete#Complete

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

nnoremap <Leader>ov :split $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader><BS>w :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTAX

set t_Co=256
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
hi Constant   cterm=NONE ctermfg=white
hi Identifier cterm=NONE ctermfg=white
hi Function   cterm=NONE ctermfg=white
hi Statement  cterm=bold ctermfg=white
hi PreProc    cterm=NONE ctermfg=white
hi Type      cterm=bold ctermfg=white
hi Special    cterm=NONE ctermfg=white
hi Delimiter  cterm=NONE ctermfg=white
hi Include cterm=bold ctermfg=white
hi Typedef   cterm=bold ctermfg=white
hi Conditional cterm=bold ctermfg=white
hi Keyword cterm=bold ctermfg=white
hi Label cterm=bold ctermfg=white
hi Comment cterm=italic ctermfg=240
hi SpecialComment cterm=italic ctermfg=240
hi Todo ctermbg=4 cterm=italic ctermfg=black
hi LineNr ctermfg=grey
hi CursorLineNr ctermfg=red
hi CursorLine cterm=NONE
hi MatchParen ctermbg=red ctermfg=black
hi SignColumn ctermbg=NONE
hi VertSplit ctermbg=7 ctermfg=15
hi StatusLine ctermfg=15
hi StatusLineNC ctermfg=15
hi Directory ctermfg=4
hi MoreMsg ctermfg=2
hi Question ctermfg=10
hi WarningMsg ctermfg=9
hi Title ctermfg=magenta
hi Search ctermbg=red ctermfg=white
hi WildMenu ctermfg=4
hi SpecialKey ctermfg=12
hi Pmenu ctermbg=15 ctermfg=grey
hi PmenuSel ctermbg=darkgrey ctermfg=white
hi Visual ctermbg=white ctermfg=black
hi EndOfBuffer ctermfg=15
hi TabLineFill ctermfg=15
hi TabLine ctermfg=grey ctermbg=15 cterm=none
hi TabLineSel ctermfg=white ctermbg=7 cterm=bold
hi Title ctermfg=red

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SUPERTAB

let g:SuperTabDefaultCompletionType = "<C-x><C-o>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CODEX

set cmdheight=1
set tags=tags;/,codex.tags;/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PATHOGEN

execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF

noremap <Leader>fa :Ag<CR>
noremap <Leader>ff :Files<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NEOMAKE

augroup neomake
  au!
  autocmd BufWritePost,BufEnter * Neomake
augroup END

hi NeomakeWarningSign ctermfg=3
hi NeomakeWarning ctermfg=3 cterm=underline
hi NeomakeInfo ctermfg=5 cterm=underline
hi NeomakeInfoSign ctermfg=5
hi NeomakeMessage ctermfg=4 cterm=underline
hi NeomakeMessageSign ctermfg=4
noremap <Leader>en :lnext<CR>
noremap <Leader>ep :lpre<CR>
noremap <Leader>el :lli<CR>

let NERDSpaceDelims=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GHCMOD

augroup haskell
  au!
  au FileType haskell noremap <silent> ta :GhcModTypeInsert<CR>
  au FileType haskell noremap <silent> ts :GhcModSplitFunCase<CR>
  au FileType haskell noremap <silent> tq :GhcModType<CR>
  au FileType haskell noremap <silent> td :GhcModTypeClear<CR>
  au FileType haskell noremap <Leader>ct :!codex update --force<CR>
augroup END

set rtp+=/usr/local/opt/fzf
noremap <Leader>bu :Buffers<CR>

noremap <Leader>n :NERDTreeToggle<CR>

let g:haskell_tabular = 1

vnoremap a= :Tabularize /=<CR>
vnoremap a. :Tabularize /\.<CR>
vnoremap ala :Tabularize /<-<CR>
vnoremap a; :Tabularize /::<CR>
vnoremap a- :Tabularize /-><CR>

noremap <silent> <C-l> :nohlsearch<CR><C-l>
:command! -nargs=* HelptagsP call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PSC-IDE

let g:psc_ide_syntastic_mode = 1
let g:neomake_purescript_enabled_makers = []

function! PureAbbrev()
  iabbrev <buffer> forall ∀
endfunction

augroup purescript
  au!
  au FileType purescript nnoremap <silent> ta :PSCIDEaddTypeAnnotation<CR>
  au FileType purescript nnoremap <silent> ts :PSCIDEcaseSplit<CR>
  au FileType purescript nnoremap <silent> tq :PSCIDEtype<CR>
  au FileType purescript nnoremap <silent> ti :PSCIDEimportIdentifier<CR>
  au FileType purescript nnoremap <silent> tg :PSCIDEgoToDefinition<CR>
  au FileType purescript nnoremap <silent> tl :PSCIDEapplySuggestion<CR>
  au FileType purescript nnoremap <Leader>ct
        \ :! purs docs --format ctags "src/**/*.purs" "bower_components/*/src/**/*.purs" > tags<CR>

  au BufNewFile,BufRead *.purs call PureAbbrev()
augroup END
