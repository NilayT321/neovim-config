:set number
:set noshowmode

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
    Plug 'lervag/vimtex'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'joshdick/onedark.vim' 
    Plug 'sheerun/vim-polyglot'
    Plug 'itchyny/lightline.vim'
    Plug 'preservim/nerdtree'
call plug#end()

" Vimtex settings
filetype plugin indent on
syntax enable
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:tex_flavor = 'latex'
let g:tex_IgnoredWarnings = 
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n".
    \'|42 warning| Package mdframed Warning:'. "\n"
let g:Tex_IgnoreLevel = 9 

" configure lightline 
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }

" set colorscheme
:colorscheme onedark
syntax on
