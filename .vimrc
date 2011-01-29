filetype plugin on

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'


map T :TaskList<CR>
map P :TlistToggle<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete


set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
:syntax on
