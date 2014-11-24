set nocompatible        " Must be first line
filetype off "require by Vundle

"--------------------------------------------------------------------------
" Vundle & Plugins Settings
"--------------------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" color scheme
Plugin 'chriskempson/vim-tomorrow-theme'
"status line
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Settings

" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"--------------------------------------------------------------------------
" View  Settings
"--------------------------------------------------------------------------

set background=dark
colorscheme Tomorrow-Night


" Enable syntax hightlighting
syntax on
" Enable line numbers
set number
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set laststatus=2    " always show the status line

"set lines=50 " 50 lines of text instead of 24,
"set columns=100

"--------------------------------------------------------------------------
" Format Settings
"--------------------------------------------------------------------------

set encoding=utf-8 nobomb   " Use UTF-8 without BOM

" Common tabs settings
set tabstop=4               " The width of a TAB is set to 4.
                            " Still it is a \t. It is just that
                            " Vim will interpret it to be having
                            " a width of 4.
set softtabstop=4           " Sets the number of columns for a TAB.
set shiftwidth=4            " Indents will have a width of 4.
set expandtab               " Expand TABs to spaces.

set autoindent

"--------------------------------------------------------------------------
" GUI Settings
"--------------------------------------------------------------------------
if has("gui_running")
    set lines=50 " 50 lines of text instead of 24,
    set columns=100
    set guioptions-=T       " no toolbar
    set go-=r               " no right scrollbar
    set go-=l               " no left scrollbar
    set go-=b               " no bottom scrollbar
    set go-=L               " no scrollbar even if split
    set go-=L               " no scrollbar even if split
    set go-=L               " no scrollbar even if split
    set go-=R               " no scrollbar even if split


    " Make MacVim looks cool
    if has("gui_macvim")
        set guifont=Monaco:h13
    elseif has("gui_gtk2")
    " set guifont=Monospace:h13

    endif
endif

"--------------------------------------------------------------------------
" Main Settings
"--------------------------------------------------------------------------

"no mouse
"set mouse-=a
set hlsearch                                " Highlight search terms
set ignorecase                              " Case insensitive search
set wildmenu                                " Show list instead of just completing
set wildignore+=*/tmp/*,*.so,*.swp,*.zip    " Ignore file extentions

