filetype plugin on

imap jj <Esc>

let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplForceSyntaxEnable = 1
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'


map T :TaskList<CR>
map P :TlistToggle<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
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

colorscheme ir_black
