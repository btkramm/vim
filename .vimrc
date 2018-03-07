" Archivos basura
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" BEGIN How I boosted my VIM
set autoindent
set copyindent
set hidden
set hlsearch
set ignorecase
set incsearch
set nowrap
set pastetoggle=<F2>
set showmatch
set smartcase
set smarttab
" END How I boosted my VIM

" Color
colorscheme monokai
hi ColorColumn guibg=#2d2d2d ctermbg=246
let &colorcolumn=121
set t_Co=256
syntax enable

" Copiar al portapapeles
set guioptions+=a

" Limpiar espacios arrastrados
autocmd BufWritePre * :%s/\s\+$//e

" Línea actual destacada
set cursorline

" Número de fila relativo
set relativenumber

" Tabulación
set tabstop=2 shiftwidth=2 expandtab

" Título
set title

" ¡Clic!
set mouse=a

" Plugins
call plug#begin('~/.vim/plugins')
  Plug 'scrooloose/nerdtree'
  Plug 'takac/vim-hardtime'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_powerline_fonts = 1
set laststatus=2

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Hardtime
let g:hardtime_default_on = 0

" NERDTree
map <C-n> :NERDTreeToggle<CR>
