call plug#begin('~/.vim/plugged')

"Snippets tool
"Plug 'sirver/ultisnips'
"    let g:UltiSnipsExpandTrigger = '<tab>'
"    let g:UltiSnipsJumpForwardTrigger = '<tab>'
"    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"TeX support
Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'

""Autocom
"Plug 'ycm-core/YouCompleteMe'
"Plug 'jiangmiao/auto-pairs'

"Syntax
Plug 'othree/yajs.vim'

"Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Files tree
Plug 'scrooloose/nerdtree'

"Goyo
Plug 'junegunn/goyo.vim'

call plug#end()

"Numbers at the left, with relative numbering
set number relativenumber

"Spell
"setlocal spell
autocmd FileType markdown setlocal spell
autocmd FileType tex setlocal spell
set spelllang=es_mx,en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"Indentation
set tabstop=4
set shiftwidth=4

"File type
filetype plugin indent on

"air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'sol'

"toggle line number 
nmap <F2> :set invnumber invrelativenumber<CR>

"reload vimrc
nmap <F5> :source ~/.vimrc<CR>

"toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

"copy and paste from system clipboard
"requires gvim or something that enables system clipboard
vnoremap <C-c> "+y
imap <C-v> <Esc>"+p<S-A>

"toggle goyo
map <F8> <Esc>:Goyo<CR>

"center cursor
set scrolloff=999
