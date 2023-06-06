syntax on
set smarttab ts=2 sw=2
set softtabstop=2 
set expandtab
set autoindent

set backspace=indent,eol,start

set t_Co=16

"set background=dark
colorscheme theunixzoo

"source /home/jswank/.config/nvim/colors-now

"set gfn=Droid\ Sans\ Mono\ 10
set gfn=Inconsolata\ 12
set guioptions-=T

"use semicolon as colon for commands
nmap ; :

"disable mouse support (nvim)
set mouse=

filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete#

au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4

" enable snippets
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets
let g:UltiSnipsListSnippets="<c-l>"

" typing idate inserts the current date 
iab idate <c-r>=strftime("%Y-%m-%d")<cr>

set lazyredraw " redraw only when req'd
set wildmenu " visual auto-complete
set showmatch
set cursorline

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" netrw config
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings


"
" GO stuff
"
" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"

" more syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" disable folding for markdown
let g:vim_markdown_folding_disabled = 1

let g:hcl_fmt_autosave = 1
let g:tf_fmt_autosave = 1
let g:nomad_fmt_autosave = 1

" ancient stuff
"
"autocmd BufRead,BufNewFile *.go set makeprg=go\ build
"map <leader>gr <ESC>:!gorun %<CR>

"for javascript: 
"use google closure to generate errors
":set makeprg=closure\ --js\ %
"javac style errors
":setl efm=%A%f:%l:\ %m,%+Z%p^,%+C%.%#,%-G%.%# 

"autocmd BufRead,BufNewFile *.js :call My_JS()
"function! My_JS() 
"	set makeprg=closure\ --js\ %
"	setl efm=%A%f:%l:\ %m,%+Z%p^,%+C%.%#,%-G%.%# 
"endfunction

"map <leader>hh :!tidy -q -i --show-errors 0<CR>
