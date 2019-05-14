"" set nocp appears to fix error calling the
"" subsequent pathogen function
set nocp
execute pathogen#infect()

set wildmode=longest:full
set wildmenu
set tabstop=2 shiftwidth=2 expandtab
set background=dark

syntax enable

filetype plugin indent on

let mapleader =","
let maplocalleader =",,"

"" Move to the beginning of the line
nnoremap H ^
nnoremap L $

"" Wrap selected text in quotes
vnoremap <leader>" <Esc>`<i"<Esc>`>a"<Esc>
nnoremap <leader>" viw<Esc>a"<Esc>bi"<Esc>lel

"" Open this file nice and easily
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"" Move text down
nnoremap <C-j> :m .+1<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv

"" Move text up
nnoremap <C-k> :m .-2<CR>==
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-k> :m '<-2<CR>gv=gv

"" Toggle case of words in insert mode
inoremap <C-u> <Esc>viw~`^i
nnoremap <C-u> viw~

"" Abbreviation for what I cannot type proper
iabbrev bugger buffer

"" Escape with jk
inoremap kj <Esc>
inoremap <Esc> <nop>

"" Navigate around split windows.
nnoremap <silent> <A-Up> : wincmd k<CR>
nnoremap <silent> <A-Down> : wincmd j<CR>
nnoremap <silent> <A-Left> : wincmd h<CR>
nnoremap <silent> <A-Right> : wincmd l<CR>

"" Fask existing of files
nnoremap wq <Esc>:wq<CR>

"" Remove text highlighting
nnoremap <silent> -- :nohlsearch<cr>

"" Formatting
set showtabline=2

" Indent options
set smartindent

" Searching options
set incsearch
set ignorecase
set smartcase

set foldmethod=syntax
set foldlevel=100

function! Email() range
  colo default
  set guifont=consolas\ 13
  execute "TOhtml"
  set background=dark
  colo solarized
endfunction

set viminfo='10,\"100,:20,%,n~/.viminfo

"" Python comments
au FileType python nnoremap <buffer> <leader>c I#<Esc>
au FileType cpp    nnoremap <buffer> <leader>c I//<Esc>

"" Local
source ~/.vim/.vimrc_local

"" Highlight overlength lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set runtimepath^=~/.vim/bundle/ctrlp.vim
