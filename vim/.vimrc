""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       VimrCool
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

execute pathogen#infect()
"syntax on

" Colors {{{
syntax enable
set background=dark
colorscheme solarized

" fold colors
highlight Folded cterm=none ctermbg=none ctermfg=4
highlight FoldColumn cterm=none ctermbg=none ctermfg=4

" keep cursor column last so it overrides all others
highlight CursorColumn cterm=none ctermbg=Black
highlight CursorLine cterm=none ctermbg=Black

"}}}

" UI {{{

set number              " show line numbers
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

" highlight position of cursor
set cursorline
set cursorcolumn

"}}}

" Search {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"}}}

" Move {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

"}}} 

" Fold {{{
set foldenable " enable folding
set foldlevelstart=0   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za
set foldmethod=marker   " fold on marker {{{ }}}
"set foldmethod=indent
"}}}

" vim:foldmethod=marker:foldlevel=0
