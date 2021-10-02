" Enable syntax processing
syntax enable

" Color scheme
set background=dark

" Show file in title bar
set title

" Tab is 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Auto and smart indenting
set ai
set si

" Load filetype-specific indenting
filetype indent on

" Visual autocomplete menu
set wildmenu

" Ignore these types of files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/env/*

" Highlight matching brackets
set showmatch

" Show 'hybrid' numbers
set number
set relativenumber

" Show command in bottom bar
set showcmd

" Highlight current line
set cursorline

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Case insensitive search
" except when searching with caps
set ignorecase
set smartcase

" Allow Regex search
set magic

" Turn off spellcheck by default
set nospell

" Spelling with us dictionary
"set spell spelllang=en_us

" Map ':' to ';' because speed
nnoremap ; :
vnoremap ; :

" Auto change file on outside change
set autoread

" Leader is space
nnoremap <SPACE> <Nop>
let mapleader=" "

" Format JSON with this command
com! FormatJSON %!python -m json.tool

" Update gitgutter diff faster
set updatetime=100

" Paste like a normal human being
" Having this on by default seems to mess with YCM
" set paste

" Make backspace work like most other places (issue with homebrew vim)
set backspace=indent,eol,start

" Indent based folding
set foldmethod=manual

" Dont start folded
set nofoldenable

" New splits to the right/bottom
set splitbelow
set splitright

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·


" Faster split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make Y consistent with C and D
nnoremap Y y$

" Fast reload of vimrc
nnoremap <Leader>r :source $MYVIMRC<CR>

" Use tab and shift tab to indent and de-indent code
nnoremap <Tab>   >>
nnoremap <S-Tab> <<

" These also mess with YCM
" vnoremap <Tab>   >><Esc>gv
" vnoremap <S-Tab> <<<Esc>gv

" Fast tab creation
nnoremap <Leader>T <C-W>T
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>te :tabedit

" Fast split creation
nnoremap <Leader>s :sp<CR>
nnoremap <Leader>v :vsp<CR>

" Fast equalize split
nnoremap <Leader>= <C-W>=

" Fast select all
nnoremap <Leader>a ggVG

" Stop highlighting search
nnoremap <Leader>n :noh<CR>

" Fast leave insert mode
inoremap jk <esc>
inoremap jj <esc>:w!<cr>

" Save and load folds automatically
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Source vimrc on filechange
autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
