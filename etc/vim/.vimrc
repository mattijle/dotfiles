filetype plugin on


"Double tapping j escapes modes.
imap jj <Esc>


"Minibuffer Explorer configs************************************************
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplForceSyntaxEnable = 1
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
"Tasklist mappings**********************************************************

map T :TaskList<CR>
map P :TlistToggle<CR>


"Omni completion stuffs*****************************************************
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"General stuff**************************************************************
set equalalways
set cursorline
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
:syntax on



let g:zenburn_high_Contrast = 1
"colorscheme ir_black
colorscheme zenburn
