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

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component-function': {
      \   'gitbranch': 'fugitive#head'
      \},
      \}
colorscheme onedark

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
nnoremap <Leader><Leader> :e#<CR>

" Show matching parenthesis
set showmatch

" Vim Plugins config
noremap <Leader>r :CommandTFlush<CR>
set wildignore+=*.log,*.sql,*.cache

" Don't need to show status b/c we are using lightline
set noshowmode
set laststatus=2
