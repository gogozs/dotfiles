set nocompatible        " Must be first line
filetype off "require by Vundle

"--------------------------------------------------------------------------
" Vundle & Plugins settings
"--------------------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"" Color scheme
Plugin 'chriskempson/base16-vim'

"slimv
Plugin 'kovisoft/slimv' 
" git wrapper
Plugin 'tpope/vim-fugitive'
" tabular
Plugin 'godlygeek/tabular'

"" Enhanced file formats
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'

"" Misc
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'

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

" markdown 
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1 " Highlight YAML frontmatter as used by Jekyll 

"--------------------------------------------------------------------------
" view  settings
"--------------------------------------------------------------------------
let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
"colorscheme 
colorscheme base16-eighties

" enable syntax hightlighting
syntax on
" enable line numbers
set number
" show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

if has('statusline')
    set laststatus=2    " always show the status line

    " airline config
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_symbols.branch='⑂'

endif

"set lines=50 " 50 lines of text instead of 24,
"set columns=100

"--------------------------------------------------------------------------
" format settings
"--------------------------------------------------------------------------

set encoding=utf-8 nobomb   " Vim inside encoding (buffer, register...)
set fileencoding=utf-8 nobomb " New file encoding 
" Auto file encoding detection order
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big5,euc-jp,euc-kr,latin1 

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

