" ctags support
set tags=./tags,tags;

set nu
set background=dark
set nocompatible
set novb
set ruler
set ignorecase
set incsearch
set ttyfast           " smoother output, we're not on a 1200 dialup :)
set showmode          " Tell you if you're in insert mode
" Set tab settings
set tabstop=4         " Set the tabstop to 4 spaces
set shiftwidth=4      " Shiftwidth should match tabstop
set softtabstop=4
set expandtab         " Convert tabs to <tabstop> number of spaces

set wildmenu
set wildmode=list:longest
set showmatch 
set t_Co=25
syntax on


if has("gui_running")
    colorscheme torte
    set guifont=Monospace\ Bold\ 14
    highlight Pmenu guibg=black gui=bold guifg=yellow
    highlight PMenuSel   gui=bold guibg=DarkGreen guifg=honeydew2
endif

" Make browsing with vim better
let g:netrw_liststyle=3 	" Use tree-mode as default view
let g:netrw_browse_split=4 	" Open file in previous buffer
let g:netrw_preview=1 		" preview window shown in a vertically split
let g:netrw_winsize=130


