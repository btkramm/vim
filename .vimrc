" Visualizar número de fila.
:set number

" Máximo de 80 columnas.
:let &colorcolumn=80

" Tab por 2 espacios.
:set tabstop=2 shiftwidth=2 expandtab

" Syntax highlight.
:syntax enable

" Colores
:colorscheme Tomorrow-Night-Eighties

" Plugins
call plug#begin('~/.vim/plugins')
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-surround'
call plug#end()

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
set laststatus=2

