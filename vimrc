syntax enable
set number
set ruler
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
set ignorecase
set smartcase
set background=light
set backspace=indent,eol,start
set cmdheight=2
set showcmd
set laststatus=2
set showmatch
set cursorline
set lazyredraw
set wildmenu
set wildignore=*.o,*~,*.pyc
set noeb vb t_vb=
autocmd BufWritePre * %s/\s\+$//e
" filetype indent on
" au GUIEnter * set vb t_vb=
colorscheme solarized

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
