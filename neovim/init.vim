" Plugins {{{
call plug#begin()

Plug 'jreybert/vimagit'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'nvie/vim-flake8'
Plug 'bkad/camelcasemotion'

call plug#end()
" }}}

" Leader Shortcuts {{{
let mapleader=","
" }}}

" Plugin Settings {{{

" Start tmuxline automatically
let g:airline#extensions#tmuxline#enabled = 1
let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

" flake8
let g:flake8_show_in_gutter=1  " show
map <Leader>f :call flake8#Flake8UnplaceMarkers()<CR>

" camel case motion
let g:camelcasemotion_key = '<leader>'

" }}}

" NERDTree {{{
map <Leader>m :NERDTreeToggle<CR>
noremap <Space>c :NERDTreeCWD<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0
let NERDTreeQuitOnOpen = 1
let NERDTreeIgnore=['\.pyc$', '\~$']
let NERDTreeShowLineNumbers = 1
" }}}

" Misc {{{
inoremap jk <esc>
set visualbell
" }}}

" Spaces, Tabs {{{
set tabstop=4
set softtabstop=4
set expandtab
" }}}

" UI Layout {{{
set number
set showcmd
set cursorline
set guicursor=

filetype indent on
set wildmenu
set lazyredraw
set showmatch
" }}}

" Searching {{{
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent
" }}}

" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
" }}}

" Colors {{{
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
set background=dark
let g:solarized_termtrans = 1
let g:gruvbox_italic=1
let g:airline_theme='gruvbox'
colorscheme gruvbox
" }}}

" Folding for .vimrc
set modelines=1
" vim:foldmethod=marker:foldlevel=0
