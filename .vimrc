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
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"file detection
filetype indent plugin on

color inkpot

"search options
set hlsearch    "highlights search
set incsearch   "searches as you type
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"numbers
set nu!
set ruler

" Mappings
"restore mouse function
map <leader>m :set ttymouse=xterm2<cr>

"taglist
map <leader>f :TlistToggle<cr>

"tasklist
map <leader>l <Plug>TaskList

let TList_WinWidth=35

"hide toolbar for macvim
if has("gui_running")
	set guioptions=-t
endif

"sanity
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
