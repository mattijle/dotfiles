call pathogen#infect()
set nocompatible
filetype off
syntax enable
set background=dark
"let g:solarized_termcolors=256
colors solarized
set laststatus=2
set directory=$HOME/.swaps//

filetype plugin indent on
filetype plugin on

"Double tapping j escapes modes.
imap jj <Esc>

"Minibuffer Explorer configs************************************************
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplForceSyntaxEnable = 1
"Omni completion stuffs*****************************************************
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
"General stuff**************************************************************
set number
set eadirection=hor
"set equalalways
set cursorline
set expandtab
set textwidth=79
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ofu=syntaxcomplete#Complete
map <C-n> :NERDTreeToggle<CR>
let g:syntastic_javascript_checkers = ['jshint']
function! CurDir()
    return substitute(getcwd(), '/home/matti/', "~/", "g")
endfunction

" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L
