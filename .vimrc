" enable pathogen
execute pathogen#infect()

" enable plugins
filetype plugin on
filetype indent on

""" COMMON """
" Enable line numbers
set nu

" Tell in which mode you are
set showmode

" Enable ruler
set ruler

" Disable compatibility with vi
set nocompatible

" Set nice colors when gui started
if has("gui_running")

    " Open mc in new terminal
    map <F2> :!mate-terminal -e mc<CR><CR>

    colorscheme torte
    if has("unix") && !has("mac")
        " You need to escape spaces here (on unix)
        set guifont=Monospace\ Bold\ 14
    endif
    if has("mac")
        set guifont=Monaco:h18
    endif
    " TODO: Make some setting for Mac OS

    highlight Pmenu guibg=black gui=bold guifg=yellow
    highlight PMenuSel   gui=bold guibg=DarkGreen guifg=honeydew2
endif

""" SEARCHING """
" Make search magic (all chars like | are magic now so no slash are needed)
nnoremap / /\v

" Ignore case
set ignorecase

" When 'ignorecase' and 'smartcase' are both on, if a pattern contains an 
" uppercase letter, it is case sensitive, otherwise, it is not. 
" For example, /The would find only "The", while /the would find "the" or "The" etc.
set smartcase

" Search for string.. NOW!
set incsearch


" Map backspace key to cancel highlights
nmap <silent> <BS> :nohlsearch<CR>

" Highlight search
set hlsearch

""" COLORS """
" Set background color when we are in terminal
set background=dark

""" TWEAKS """
set ttyfast           " smoother output, we're not on a 1200 dialup :)

" don't mess directory with swap files
set noswapfile

" Disable visual bell
set novb 

" Set 256 color teerminal
set t_Co=256

" syntax highlight
syntax on

" make backspace work like most other apps
set backspace=2

" Better console search
set wildmenu
set wildmode=list:longest

" show file name in titlebar
set title
" use 2 lines for the status bar (helps to have filename show)
set laststatus=2 

""" CSCOPE support """
if has("cscope") " check if vim is compiled with cscope support

    " try to connect to database
    if filereadable("cscope.out")
        cs add cscope.out

        " investigate if we have cs_cope connection
        let saveA = @a
        redir @a
        silent! exec 'cs show'
        redir END
        let cs_conns = @a
        let @a = saveA

        if cs_conns !~? 'no cscope connections'
            " Map my favorite key to cscope search - split window horizontaly
            nmap <C-\> :scs find s <C-R>=expand("<cword>")<CR><CR>
        endif " cs_conns check
    endif " filereadable
endif " has

""" PLUGINS """
"" NERDTree ""

" Automatically open NERDTree when not file name given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Map ctrl+n to open nerdtree window
map <C-n> :NERDTreeToggle<CR>

" Fallback if we don't have NERDTree installed
" Make browsing with vim better
let g:netrw_liststyle=3 	" Use tree-mode as default view
let g:netrw_browse_split=4 	" Open file in previous buffer
let g:netrw_preview=1 		" preview window shown in a vertically split
let g:netrw_keepdir=0

