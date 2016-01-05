set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Auto completion for python 
Plugin 'davidhalter/jedi-vim'

" Auto surround of quotes
Plugin 'raimondi/delimitmate'

call vundle#end()            " required
filetype plugin indent on    " required

:se nu
:se ai
:set noswapfile

iabbr hh <head><CR></head>

" Own Plugin :P

:source /home/aswin/vimmit.vim
:call Reddit()
