" Visualizar número de fila.
:set number

" Máximo de 80 columnas.
:set textwidth=80

" Tab por 2 espacios.
:set tabstop=2 shiftwidth=2 expandtab

" Syntax highlight.
:syntax enable

" Colores
:set background=dark
:colorscheme solarized

" Plugins
call plug#begin('~/.vim/plugins')
  Plug 'scrooloose/nerdtree'
call plug#end()
