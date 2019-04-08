" Sourced from all over github. Still figuring out what a lot of these do
" Use Vim settings rather than Vi ( supposedly much better :) )
set nocompatible

" default help to fullscreen (for now)
cnoremap help tab help

" ========================= Pathogen init ============================
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()

" ========================= General Config ===========================
set number                  "line numbers
set history=100             "store :cmd history
set hidden                  "hide and preserve files when opening new one
set nobackup
set noswapfile
set visualbell
set noerrorbells
syntax on                   "turn on syntax highlighting

"remap leader key to 'comma'
let mapleader=","
 "Auto reload vimrc
map <leader>s :source ~/.vimrc<CR>
" Prompt for password if required on a file
cmap w!! w !sudo tee % >/dev/null

" Forced to stop using arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Use some logic when indenting
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Enable plugins based on file type
filetype plugin on

" Enable 24-bit color terminal support (for colorscheme)
if (has("termguicolors"))
  set termguicolors
endif

" ======================== Colorscheme and Lightline =================
"
" Lightline config (needs to come before colorscheme)
let g:lightline = {
     \  'colorscheme': 'one',
     \  'active': {
     \    'left': [
     \      [ 'mode', 'paste' ],
     \      [ 'gitbranch', 'readonly', 'filename', 'modified' ]
     \    ]
     \  },
     \  'component_function': {
     \    'gitbranch': 'fugitive#statusline'
     \  },
     \}

colorscheme onedark
set guifont=Menlo\ Regular:h14
set colorcolumn=90


" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight found words when running search
set hlsearch

" Use arrow keys (because why not?)
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" Reopen previously opened file (move back and forth between two files)
nnoremap <leader><leader> :e#<CR>

" Show matching parenthesis
set showmatch

" ======================== Vim Plugins config =======================
" ==========  ripgrep  ==========
if executable('ripgrep')
  let g:ackprg="ripgrep -l"
endif

" ==========  ctrl+p   ==========
" ignoring some things in ctrl+p
set wildignore+=*.pyc,*venv/*,*node_modules,.git
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" tells ctrl+p which root directory setting to use
let g:ctrlp_working_path_mode = 'ra'
" clear ctrl+p cache
nnoremap FF :CtrlPClearCache <CR>
" set max # of files to infinite
let g:ctrlp_max_files = 0
" ========== Lightline ==========
" Don't need to show status b/c we are using lightline
set noshowmode
set laststatus=2

" ========== NerdTree ===========
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"map <C-e> :NERDTreeTabsToggle<CR>:NERDTreeMirrorOpen<CR>
map <leader>f :NERDTreeToggle<CR>
map <leader>v :NERDTreeFind<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '.DS_Store', '.idea']
let NERDTreeQuitOnOpen=1
let NERTTreeMinimalUI=1
"close vim if only nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ========== GitGutter ==========
set signcolumn=yes

" ========== Syntax Highlighting
let g:javascript_plugin_jsdoc = 1


