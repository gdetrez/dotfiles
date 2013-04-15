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

set number

" set encoding=utf-8
" set laststatus=2
" let g:Powerline_symbols = 'fancy'
set term=xterm-256color
" set t_Co=256

" python from powerline.ext.vim import source_plugin; source_plugin()
" Setting indentation without hard tabs
set expandtab
set shiftwidth=2
set softtabstop=2

nnoremap s l
nnoremap l k
nnoremap k j
nnoremap j h

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

