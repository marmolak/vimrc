" open mc in terminal
map <F2> :!gnome-terminal -e mc<CR><CR>
map <F3> :!gnome-terminal -e "git diff"<CR><CR>
map <F4> :!gnome-terminal -e "git commit -a"<CR><CR>
map <F9> :!gnome-terminal -e "/bin/bash -c 'echo ENTER; read; make tag && git push --tags && make bkradd && tcms-submit --all --coverage \| tee /tmp/last-tcms-submit; read'"<CR><CR>
map <F10> :!gnome-terminal -e "less /tmp/last-tcms-submit"<CR><CR>

" ctags support
set tags=./tags,tags;
" cscope support
nmap <C-[> :cs find s <C-R>=expand("<cword>")<CR><CR>

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
let g:netrw_keepdir=0

