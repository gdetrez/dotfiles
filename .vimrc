" This must be first, because it changes other options as side effect
set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

" set t_Co=16

if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

set number        " always show line numbers
set hidden        " hides buffers instead of closing them
set nowrap        " don't wrap lines
" Setting indentation without hard tabs
set expandtab     " Use soft tabs
set shiftwidth=2  " Indent 2 spaces at a time
set softtabstop=2 " A tab is 2 spaces



" set encoding=utf-8
" set laststatus=2
" let g:Powerline_symbols = 'fancy'
set term=xterm-256color
" set t_Co=256

" python from powerline.ext.vim import source_plugin; source_plugin()

nnoremap s l
nnoremap l k
nnoremap k j
nnoremap j h

" --- Trailing whitespace managements ----------------------------------------
"  This highlight trailing whitespaces
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
set list
" this defines the characters to highlight
"   tab:  mark tab characters
"         ⚠  the space afte the ↦  is a non breaking space!!
"   trail: mark trailing spaces
"   extends: mark lines that extend off-screen
"   nbsp: mark non breakable spaces
set listchars=tab:↦ ,trail:␣,extends:‥,nbsp:␣
" Set color
highlight SpecialKey ctermfg=9

" ~~~ Git-gutter ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Change the background color
highlight clear SignColumn
highlight SignColumn ctermbg=8
" Change sign for modified line
let g:gitgutter_sign_modified = "±"
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 1

" this is a custom command to remove all trailing whitespaces
command SpaceJanitor execute '%s/\s\+$//e'

