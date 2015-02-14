filetype off "require by Vundle

"--------------------------------------------------------------------------
" Vundle & Plugins settings
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
"slimv
Plugin 'kovisoft/slimv'

" all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Plugins settings
"--------------------------------------------------------------------------

" omni completion
filetype plugin on
set omnifunc=syntaxcomplete#complete

" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" slimv
"let g:lisp_rainbow=1


"--------------------------------------------------------------------------
" view  settings
"--------------------------------------------------------------------------

set background=dark
"colorscheme Tomorrow-night
colorscheme Tomorrow-Night-Eighties


" enable syntax hightlighting
syntax on
" enable line numbers
set number
" show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set laststatus=2    " always show the status line

"set lines=50 " 50 lines of text instead of 24,
"set columns=100

"--------------------------------------------------------------------------
" format settings
"--------------------------------------------------------------------------

set encoding=utf-8 nobomb   " use utf-8 without bom

" common tabs settings
set tabstop=4               " the width of a tab is set to 4.
                            " still it is a \t. it is just that
                            " vim will interpret it to be having
                            " a width of 4.
set softtabstop=4           " sets the number of columns for a tab.
set shiftwidth=4            " indents will have a width of 4.
set expandtab               " expand tabs to spaces.

set autoindent

"--------------------------------------------------------------------------
" GUI settings
"--------------------------------------------------------------------------
if has("gui_running")
    set lines=50 " 50 lines of text instead of 24,
    set columns=100
    set guioptions-=T       " no toolbar
    set guioptions+=m       " Slimv menu
    set go-=r               " no right scrollbar
    set go-=l               " no left scrollbar
    set go-=b               " no bottom scrollbar
    set go-=L               " no scrollbar even if split
    set go-=L               " no scrollbar even if split
    set go-=L               " no scrollbar even if split
    set go-=R               " no scrollbar even if split


    " Make MacVim looks cool
    if has("gui_macvim")
        set guifont=Menlo:h12
    elseif has("gui_gtk2")
    " set guifont=Monospace:h13

    endif
endif

"--------------------------------------------------------------------------
" Main settings
"--------------------------------------------------------------------------

"no mouse
"set mouse-=a
set hlsearch                                " Highlight search terms
set ignorecase                              " Case insensitive search
set wildmenu                                " Show list instead of just completing
set wildignore+=*/tmp/*,*.so,*.swp,*.zip    " Ignore file extentions

