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

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    Plugin 'Valloric/YouCompleteMe'
  endif
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Settings

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    " YouCompleteMe
    "set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
    "inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
    "上下左右键的行为 会显示其他信息
    "inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    "inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"

    let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

    let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
    let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
    let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
    let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
    nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
    "在注释输入中也能补全
    let g:ycm_complete_in_comments = 1
    "在字符串输入中也能补全
    let g:ycm_complete_in_strings = 1
    "注释和字符串中的文字也会被收入补全
    let g:ycm_collect_identifiers_from_comments_and_strings = 0
    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py'

    nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处

  endif
endif
" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"--------------------------------------------------------------------------
" View  Settings
"--------------------------------------------------------------------------

" Use the Tomorrow-Night theme
set background=dark
colorscheme Tomorrow-Night

" Enable syntax hightlighting
syntax on
" Enable line numbers
set number
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set laststatus=2    " always show the status line

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

