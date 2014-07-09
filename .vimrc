"PACKET MANAGER:
"---------------
call pathogen#infect()
syntax on
filetype plugin indent on


"SOURCING:
"---------
"Automatically reloads .vimrc on write (w)
autocmd! bufwritepost .vimrc source %


"NUMBERING:
"----------
:set number


"HIGHLIGHTING:
"-------------
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>


"SPACING:
"--------
"Set tabbing to 4 spaces (preferred indentation for Python)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


"SHORTCUTS:
"----------
"Get out of insert mode by hitting 'jj'
inoremap jj <Esc>
"Switch between 'set paste' and 'set nopaste' by keying 'zxc'
set pastetoggle=zxc


"SEARCH:
"-------
"Makes Search Case Insensitive
set hlsearch
"set incsearch
set ignorecase
set smartcase


"WHITESPACE:
"-----------
"Highlights extra whitespace at the end of a file in red
"Must be inserted before the color scheme
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=gray guibg=gray
au InsertLeave * match ExtraWhitespace /\s\+$/


"COLOR SCHEME:
"-------------
"colorscheme xoria256
"set t_Co=256G
"set term=xterm-256color
let g:solarized_termcolors=256
colorscheme solarized
"syntax enable
set background=dark
"set background=light


"NERDTree (File structure):
"--------------------------
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror

"makes NERDTree close automatically if it's the last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"INDENTATION:
"------------
"Easier moving of code blocks (keeps code highlighted for multiple indents
"without having to reselect)
vnoremap < <gv
vnoremap > >gv


"PHP:
"----
"Auto Completion (OmniCompletion) 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


"DRUPAL:
"-------
"Makes vim recognize Drupal files as PHP syntax
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on
"Adds autocompletion via OmniCompletion for Drupal classes, constant definitions, functions, and interfaces
:set tags=~/.vim/tags/drupal
