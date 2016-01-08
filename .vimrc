" Use vim settings instead of vi
set nocompatible

" colors and stuf:
colorscheme molokai
syntax enable

" tabs and spacing
set tabstop=3
set softtabstop=3
set expandtab
set shiftwidth=3

" not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" UI
set number
set ruler " line and column number of cursor
set showcmd " shows last command in bottom bar
set cursorline " highlight horizontal line
filetype indent on " laod filetype specific files
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching [{()}]

" Search
set incsearch " search as characters are entered
set hlsearch " highlight matches
" turn off highlighting
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable
set foldlevelstart=10 " start with most things open
set foldmethod=indent " fold based on indent level

" Movement
" move vertically by visual lines
nnoremap j gj
nnoremap k gk
set backspace=indent,eol,start
set fileformats=unix,dos,mac

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

"toggle gundo ( super undo )     NEED TO DOWNLOAD gundo.vim FIRST!!
"nnoremap <leader>u :GundoToggle<CR>


if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
