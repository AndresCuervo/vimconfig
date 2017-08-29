" -----
" Color
" -----
" let g:seoul256_background = 235
colorscheme seoul256
" colorscheme jellybeans
" colorscheme monokai
" colorscheme Tomorrow-Night-Blue

" --------------
" Sytastic stuff
" --------------

" Enable Syntastic to automatically load errors into the location list
let g:syntastic_always_populate_loc_list = 1

" Enable Syntastic to check for errors when a file is loaded into Vim
let g:syntastic_check_on_open = 1
" let g:syntastic_enable_signs=1

" Use custom error and warning symbols to Syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" Set Python default to Python3
let g:syntastic_python_python_exec = '/path/to/python3'

" ---------------
" Airline Settings
" --------------
" Add vim-airline buffer list to the top of Vim
let g:airline#extensions#tabline#enabled = 1

" Define airline plugin font for compatability
let g:airline_powerline_fonts = 1
"
" Powerline theme
let g:airline_theme = 'base16'
" let g:airline_theme = 'wombat'
" let g:airline_theme = 'light'

" Always on Rainbow parens
let g:rainbow_active = 1

" Custom coloring for Rainbow Plugin
let g:rainbow_conf = {
            \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': {},
            \       'tex': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \       },
            \       'lisp': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \       },
            \       'vim': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \       },
            \       'html': {
            \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \       },
            \       'css': 0,
            \   }
            \}

" Set TeX previewer to default Mac viewer, "Preview"
let g:livepreview_previewer = 'open -a Preview'

" Anzi Search statusline
set statusline=%{anzu#search_status()}

" JSON.vim, turn off quote concealment
let g:vim_json_syntax_conceal = 0

" ------
" CtrlP Setup
" ------
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif
