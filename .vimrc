set nu
set background=dark
set nocompatible
set novb
set ruler
set ignorecase
set incsearch

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


