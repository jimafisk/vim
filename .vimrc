"PACKET MANAGER:
"---------------
call pathogen#infect()
syntax on
filetype plugin indent on


"COPY/PASTE
"----------
"Increases the memory limit from 50 lines to 1000 lines
:set viminfo='100,<1000,s10,h


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

"Control P file search
set runtimepath^=~/.vim/bundle/ctrlp.vim

"List of functions in the current file using Tagbar plugin
nnoremap <C-t> :TagbarToggle<CR>
"Make the cursor go to Tagbar window when it opens
let g:tagbar_autofocus = 1

"List of functions in the current file using Taglist plugin
"Use CNTRL + t to open Taglist Window
nnoremap <C-t><C-l> :TlistToggle<CR>
"Makes it so the cursor appears in the Taglist window when it's opened
let Tlist_GainFocus_On_ToggleOpen = 1
"Closes Taglist window if main window closes
let Tlist_Exit_OnlyWindow = 1
"Use the correct Ctags, which is required for taglist and tagbar
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'


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
"autocmd VimEnter * NERDTree
"autocmd BufWinEnter * NERDTreeMirror

"makes NERDTree close automatically if it's the last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"allows NERDTree to open/close using CNTRL+n
nnoremap <C-n> :NERDTreeToggle<CR>

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
"User CNTRL+P to access
:set tags=~/.vim/tags/drupal

"Points to document with Drupal specific vim settings
autocmd! BufNewFile,BufReadPre,FileReadPre  *.module    so ~/.vim/drupal.vim
autocmd! BufNewFile,BufReadPre,FileReadPre  *.php       so ~/.vim/drupal.vim
