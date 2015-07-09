" Modified version of:
" https://github.com/mutewinter/dot_vim/blob/master/config.vim
" ---------------------------------------------
" Regular Vim Configuration
" ---------------------------------------------
"
" ---------------
" Color
" ---------------
set background=dark
colorscheme jellybeans
" colorscheme seoul256 " Really nice, but the overall low-contrast feel is
" really stifling for me to read my code, I prefer jellybeans' readability.
" let g:seoul256_background = 234
" let g:solarized_termtrans = 1
" let g:solarized_underline = 0

" Force 256 color mode if available
if $TERM =~ "-256color"
    set t_Co=256
endif

" ---------------
" File Locations
" -----------------------------
set backup
set backupdir=~/.vim/.backup// " Double // causes backups to use full file path
set directory=~/.vim/.tmp//
set writebackup
set spellfile=~/.vim/spell/custom.en.utf-8.add
" Persistent Undo
set undodir=~/.vim/.undo
set undofile

" ---------------
" UI
" ---------------
set ruler          " Ruler on
set number         " Line numbers on so I can easily jump with <line#>gg
"set relativenumber " Lune numbers change to show how far away they are from the current line
set cursorline
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
set encoding=utf-8
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
if exists('+colorcolumn')
    set colorcolumn=80 " Color the 80th column differently as a wrapping guide.
endif

" ---------------
" Behaviors
" ---------------
syntax enable
set wildmenu            " visual autocomplete for command menu
set hidden             " Change buffer - without saving
set history=300         " Number of things to remember in history.
set cf                 " Enable error files & error jumping, this is what makes prompt on exit!
set clipboard=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set ttimeout
set ttimeoutlen=100    " Time to wait for a command (after leader for example).
set formatoptions=crql
set nrformats= " Disable Vim's default (oct, hex), which make 07 an octal.
set iskeyword+=\$,-   " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=99        " Keep 99 lines below the last line when scrolling, effectively shifting the middle of the screen on scroll.
set scrolloff=5        " Keep 5 lines below the last line when scrolling.
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists
set whichwrap+=<,>,h,l,[,]
set splitright
set splitbelow

" ---------------
" Text Format
" ---------------
filetype indent on
set tabstop=4 " number of visual spaces per tab"
set softtabstop=4 " number of spaces in tab when editing"
set backspace=indent,eol,start " Delete everything with backspace
set shiftwidth=4 " Tabs under smart indent
set shiftround
set cindent
set autoindent
set smarttab
set expandtab " tabs are spaces"

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch  " Incremental search
set infercase " infer the case of the match based on the current item.
set hlsearch   " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
            \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
            \rake-pipeline-*
" Anzi Search statusline
set statusline=%{anzu#search_status()}

" Allow visual mode to search with * (forward-looking) and # (backward-looking)
" Taken from:
" http://got-ravings.blogspot.com/2008/07/vim-pr0n-visual-search-mappings.html
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>)

" ---------------
" Visual
" ---------------
highlight LineNr ctermfg=30
highlight cursorline term=underline cterm=underline
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters
set list

" Show trailing spaces as dots and carats for extended lines.
" From Janus, http://git.io/PLbAlw

" Reset the listchars
set listchars=""
" make tabs visible
set listchars=tab:▸▸
" show trailing spaces as dots
set listchars+=trail:•
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

" --------------
" Folds
" --------------
set fdc=1
