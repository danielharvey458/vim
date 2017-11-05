syntax enable

if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
       \| exe "normal! g'\"" | endif
endif

filetype plugin indent on
execute pathogen#infect()

set background=dark
colorscheme solarized

set wildmode=longest:full
set wildmenu
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

""""""""""""""""""""""""""""""""""""""""
" Escape with df
imap df <Esc>

""""""""""""""""""""""""""""""""""""""""
" Navigate around split windows.
nmap <silent> <A-Up> : wincmd k<CR>
nmap <silent> <A-Down> : wincmd j<CR>
nmap <silent> <A-Left> : wincmd h<CR>
nmap <silent> <A-Right> : wincmd l<CR>

imap ^H <Left><Del>

nnoremap wq <Esc>:xa<cr>

nnoremap <silent> -- :nohlsearch<cr>

" Allow bash syntax in .sh files by default let g:is_bash = 1

" Don't unload buffers that aren't visible set hidden

if has("gui_running")
set guioptions-=T
set guioptions-=m
if $USER=="harvey"
set guifont=consolas\ 13
else
set guifont=DejaVu\ Sans\ Mono\ 11
endif
endif

" Indent otions
set smartindent

" Searching options
set incsearch
set ignorecase
set smartcase

" Mapping

" Prevent hash lines being unindented (for Python) inoremap # X #

map <A-PageUp> :bp<CR>
map <A-PageDown> :bn<CR>

" Map F2 to remove search highlighting
map <F2> :nohl<CR>
" Map F3 to toggle wrapping
map <F3> :set wrap!<CR>
" Map F4 in insert mode to complete XML tags imap <F4> <ESC>^y$$pbi/<ESC>hi

set foldmethod=syntax
set foldlevel=100

inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-O>za
vnoremap <F9> zf

imap <F1> std::
imap <F2> oxam::
imap <F3> CHECK_API();<left><left>

map <C-S> :ToggleWord<CR>b

imap <F11> <ESC>0d$80i#<ESC>j^i
map <F11> <ESC>0d$80i#<ESC>^<ESC>j
imap <F12> <ESC>0d$80i/<ESC>j^i
map <F12> <ESC>0d$80i/<ESC>^<ESC>j

nmap <M-j> ]]
nmap <M-k> [[

" Remove the irritating man-page shortcut nmap <S-k> ""

" Remove ZZ (same as :x)

nmap <C-s> :set spell!<CR>

function! Email() range
  colo default
  set guifont=consolas\ 13
  execute "TOhtml"
  set background=dark
  colo solarized
endfunction
