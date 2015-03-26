" Set nice colors when gui started
if has("gui_running")
    colorscheme torte
    if has("unix") && !has("mac")
        " You need to escape spaces here (on unix)
        set guifont=Monospace\ Bold\ 14
    endif
    " TODO: Make some setting for Mac OS

    highlight Pmenu guibg=black gui=bold guifg=yellow
    highlight PMenuSel   gui=bold guibg=DarkGreen guifg=honeydew2
endif

""" SEARCHING """
" Make search magic (all chars like | are magic now so no slash are needed
nnoremap / /\v

" Ignore case
set ignorecase

" Search for string.. NOW!
set incsearch

" When 'ignorecase' and 'smartcase' are both on, if a pattern contains an 
" uppercase letter, it is case sensitive, otherwise, it is not. 
" For example, /The would find only "The", while /the would find "the" or "The" etc.
set smartcase

" Map backspace key to cancel highlights
nmap <silent> <BS> :nohlsearch<CR>

""" COLORS """
" Set background color when we are in terminal
set background=dark

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

" Disable visual bell
set novb 

" Set 256 color teerminal
set t_Co=256

" syntax highlight
syntax on

" make backspace work like most other apps
set backspace=2
