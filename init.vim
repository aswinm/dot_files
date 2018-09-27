set nocompatible              " be iMproved, required
syntax on
filetype off                  " required

filetype plugin indent on    " required

:se ai
:se nu
:set noswapfile
"Close all tabs at once
nnoremap ca :qa<CR>
nnoremap csa :wqa<CR>

set tabstop=4 " Set tab as 4 spaces
set shiftwidth=4 " No of spaces for autoindent
set expandtab " Expand tabs to spaces

" Plugins
call plug#begin('~/.config/nvim/plugged')

" You complete me for auto complete
Plug 'Valloric/YouCompleteMe'

" neomake for linting
Plug 'neomake/neomake'

"CtrlP for Fuzzy search
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

" Emmet is an awesome html plugin
Plug 'mattn/emmet-vim'

" Auto surround of quotes
Plug 'raimondi/delimitmate'

" Dirdiff
Plug 'will133/vim-dirdiff'

" Bottom status line
Plug 'vim-airline/vim-airline'

" Vim color
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'

" vcscommand
Plug 'vim-scripts/vcscommand.vim'

" mercurial plugin
Plug 'phleet/vim-mercenary'

call plug#end()

" Use Enter to go to a function definition
nnoremap <CR> :YcmCompleter GoTo<CR>

"Use backspace to go back to where you came from
nnoremap <BS> <C-O>

" Shortcut of CtrlP
nnoremap zx :CtrlP<CR>
nnoremap zc :CtrlPFunky<CR>
set completeopt-=preview

autocmd! BufEnter,BufWritePost * Neomake
autocmd! QuitPre * let g:neomake_verbose = 0
let g:neomake_python_flake8_maker = { 'args': ['--ignore=E501,D100,D101,D102'], }
let g:neomake_python_pep8_maker = { 'args': ['--max-line-length=120'], }

" Copy directly to system clipboard and paste from it
set clipboard=unnamedplus

" Emmet vim configs
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Y>'

let g:ctrlp_funky_multi_buffers = 1
let g:ctrlp_funky_nerdtree_include_files = 1
let g:ctrlp_funky_nolim = 1

autocmd InsertEnter * :set norelativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set relativenumber
autocmd BufWritePre * %s/\s\+$//e
hi Comment ctermfg=Red

let g:airline#extensions#tabline#enabled = 1
set background=dark
colorscheme solarized8_flat
let g:airline_theme='dark'
