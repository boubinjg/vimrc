set number
syntax on

"to avoid ESLint errors from windows text files
set fileformat=unix
set encoding=UTF-8

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set nowrap
"change to better listchars
"set list
"set listchars=tab:>-,trail:~,extends:>,precedes:<

set cursorline
set number
set scrolloff=8
set signcolumn=yes

set showcmd
set noshowmode
set conceallevel=1
set noerrorbells visualbell t_vb=

"redirect vim swap to undo file
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
"redirect clipboard to system clipboard
set clipboard=unnamed

"smarter search settings
set ignorecase
set smartcase
set incsearch
set hlsearch
"hit enter and search terms unhighlight
nnoremap <CR> :noh<CR><CR>:<backspace>

"link plugins and whatnot
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
"so ~/.vim/autoclose.vim

set mouse=a
colorscheme nightfly


" open terminal below all splits
cabbrev term bo term
set backspace=indent,eol,start

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"Language Specific Settings Go Here

"different rules for python files
"au BufNewFile,BufRead *.py
"    \ set tabstop=4 |
"   \ set softtabstop=4 |
"    \ set shiftwidth=4 |

"terminal behaviors
autocmd TerminalWinOpen *
  \ if &buftype == 'terminal' |
  \   resize 10 |
  \   setlocal termwinsize=0x140 |
  \   setlocal nowrap |
  \ endif

