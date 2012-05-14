"pathogen
call pathogen#infect()
call pathogen#helptags()

"terminal stuff
set ttimeoutlen=50
if &term =~ "xterm" || &term =~ "screen"
	"why do i even need to do this...
	let g:CommandTCancelMap = ['<ESC>', '<C-c>']
	let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>0B']
	let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>0A']
endif 

"allow copy to clipboard
set clipboard=unnamed

"allow for hidden buffers
set hidden

"mouse 
set mouse=a

syntax on

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
set nu!
set ruler

" Mappings
"restore mouse function
noremap <leader>m :set ttymouse=xterm2<cr>

"taglist
noremap <leader>f :TlistToggle<cr>

"tasklist
noremap <leader>l <Plug>TaskList

"NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

let TList_WinWidth=35

"pyflakes
let g:pyflakes_use_quickfix = 0

"pep8
let g:pep8_map='<leader>8'

"supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestHighlight = 1
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=menuone,longest,preview

"hide toolbar for macvim
if has("gui_running")
	set guioptions=-t
endif

" highlight trailing whitespace
match Todo /\s\+$/

" ctags
set tags+=~/.vim/tags/tags
set tags+=./tags

"sanity
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

set wildmode=longest:full

set wildmenu
