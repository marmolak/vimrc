filetype plugin on

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

set ttyfast


""" MESS """

set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nocompatible
set guifont=MonaspaceArgonVar-Medium:h18
set background=dark
set expandtab
set ts=4
set softtabstop=4
set shiftwidth=4 
set shiftround  
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set nu
syntax on
set hlsearch
colorscheme torte
set ruler
set t_Co=256 
set showmode
set backspace=indent,eol,start
set showmatch
set scrolloff=4
set smarttab
set incsearch
set termencoding=utf-8
set encoding=utf-8
set lazyredraw                  " don't update the display while executing macros
set laststatus=2                " tell VIM to always put a status line in, even
                                "    if there is only one window
set cmdheight=1                 " use a status bar that is 1 rows high

set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files,
                                "    who did ever restore from swap files anyway?
set directory=~/.vim/.tmp,~/tmp,/tmp
                                " store swap files in one of these directories
                                "    (in case swapfile is ever turned on)
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
                                "    first full match
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep
set showcmd                     " show (partial) command in the last line of the screen
                                "    this also shows visual selection info
set nomodeline                  " disable mode lines (security measure)



