" Número de fila
set relativenumber

" Tabulación
set tabstop=2 shiftwidth=2 expandtab

" Color
syntax enable
colorscheme monokai
set t_Co=256
let &colorcolumn=81
hi ColorColumn guibg=#2d2d2d ctermbg=246

" ¡Clic!
set mouse=a

" BEGIN How I boosted my VIM
" Change the mapleader from \ to ,
let mapleader=","
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

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

" Trash files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Plugins
call plug#begin('~/.vim/plugins')
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-surround'
  Plug 'takac/vim-hardtime'
  Plug 'csscomb/vim-csscomb'
call plug#end()

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
set laststatus=2

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Hardtime
let g:hardtime_default_on = 0

" Strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e
