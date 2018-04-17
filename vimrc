execute pathogen#infect()

filetype plugin on
syntax on

" Remap leader key to 'comma'
let mapleader=","
" Auto reload vimrc
map <leader>s :source ~/.vimrc<CR>

set number
" Enable 24-bit color terminal support (for colorscheme)
if (has("termguicolors"))
  set termguicolors
endif

" Lightline config (needs to come before colorscheme)
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \},
      \}
colorscheme onedark

" Use arrow keys (because why not?)
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

set guifont=Menlo\ Regular:h14
set colorcolumn=90

" Keep more info in memory to speed things up
set hidden
set history=100

" Use some logic when indenting
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight found words when running search
set hlsearch

" Ability to cancel search with 'escape'
" nnoremap <silent> <Leader>/ :nohlsearch<Bar>:echo<CR>

" Reopen previously opened file (move back and forth between two files)
nnoremap <leader><leader> :e#<CR>

" Show matching parenthesis
set showmatch

" Vim Plugins config
noremap <leader>r :CommandTFlush<CR>
set wildignore+=*.log,*.sql,*.cache

" Don't need to show status b/c we are using lightline
set noshowmode
set laststatus=2
" NerdTree stuff
let NERDTreeMapActiveMode='<right>'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
" autocmd VimEnter * NERDTree
" autocmd VImEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" GitGutter
set signcolumn=yes
