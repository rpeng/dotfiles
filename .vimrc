" Vundle

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Personal plugins
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'xolox/vim-session'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-signature'
Bundle 'Lokaltog/vim-powerline'
Bundle 'benmills/vimux'
Bundle 'c9s/bufexplorer'
"Bundle 'lukaszb/vim-web-indent'
Bundle 'majutsushi/tagbar'
"Bundle 'joonty/vdebug'

filetype plugin indent on

nmap <F8> :TagbarToggle<CR>

" YCM

let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_confirm_extra_conf = 0

"allow copy to clipboard
set clipboard=unnamed

"allow for hidden buffers
set hidden

"mouse
set mouse=a
set ttymouse=xterm2

syntax on

"show cursor line
set cursorline

"sanity
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"window movement
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

"file detection
filetype indent plugin on

color inkpot

"search options
set hlsearch    "highlights search
set incsearch   "searches as you type
set ignorecase smartcase "by default ignore case
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"numbers
set number
set ruler

"status
set laststatus=2
"NERDCommenter
let g:NERDSpaceDelims = 1

"NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDSpaceDelims = 1

let TList_WinWidth=35

"supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestHighlight = 1
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=menuone,longest,preview

" highlight trailing whitespace
match Todo /\s\+$/

"conque
let g:ConqueTerm_StartMessages = 0

let g:ctrlp_switch_buffer = 0

set wildmode=longest:full

set wildmenu

"parenthesis
highlight MatchParen cterm=bold ctermbg=red ctermfg=white

"color
set t_Co=256

"sessions
let g:session_autosave = 1
let g:session_autoload = 0

