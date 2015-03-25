" Set nice colors when gui started
if has("gui_running")
    colorscheme torte
    set guifont=Monaco:h18
    highlight Pmenu guibg=black gui=bold guifg=yellow
    highlight PMenuSel   gui=bold guibg=DarkGreen guifg=honeydew2
endif

""" SEARCHING """
" Make search magic (all chars like | are magic now so no slash are needed
nnoremap / /\v

""" COMMON """
" Enable line number
set nu

" Tell in which mode you are
set showmode

" Ignore case
set ignorecase

" Needs comment!
set incsearch

" Enable ruler
set ruler

" Disable compatibility with vi
set nocompatible

""" TWEAKS """
set ttyfast           " smoother output, we're not on a 1200 dialup :)
