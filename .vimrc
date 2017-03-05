set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'myint/clang-complete'
call vundle#end()            " required
filetype plugin indent on    " required

"<leader>
""===============================
let mapleader=';'


"set
""===============================
set number
set relativenumber
set cursorline
set cursorcolumn
set hlsearch
syntax enable
syntax on
set omnifunc=syntaxcomplete#Complete
set completeopt=menu
colorscheme elflord
set vb t_vb= "no error voice


"clang complete
""=============================================================================================================
let g:clang_library_path='.vim/libclang-3.8.1.so'

"ultisnips
""=============================================================================================================
let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"



"syntastic
""=============================================================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0"

