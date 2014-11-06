nnoremap <space>s :<C-u>source $HOME/.vimrc<CR>
nnoremap <space>e :<C-u>edit $HOME/.vimrc<CR>

" display
set number
set title
set showcmd

" color
syntax on
colorscheme flatland
set background=dark

" Search
set ignorecase
set smartcase
set wrapscan
set hlsearch

" Edit
"set autoindent
set showmatch
set smartindent
set cindent

" Tab
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set shiftround
set nowrap

autocmd FileType * setlocal formatoptions-=ro

" datetime
inoremap <Leader>c <C-R>=strftime('%Y-%m-%dT%H:%M:%S+09:00')<CR>

filetype plugin indent on

" insertモードでhjkl移動を利用する
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>

set nocompatible               " be iMproved
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" originalrepos on github
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'thinca/vim-threes'
" NeoBundle 'https://bitbucket.org/kovisoft/slimv'

NeoBundleCheck

filetype plugin indent on     " required!
filetype indent on

