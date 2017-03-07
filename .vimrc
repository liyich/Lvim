set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter' 	
Plugin 'vim-scripts/OmniCppComplete' 	
call vundle#end()            " required
filetype plugin indent on    " required

"<leader>
""===============================
let mapleader=';'

"key
""===============================
nmap <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><leader>f <Plug>(easymotion-overwin-f)
nmap <f5> <esc>:!~/.vim/ct/./ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

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
set vb t_vb=
colorscheme elflord
set nocp
filetype on
filetype plugin on

"ctags
""=============================================================================================================
set tags+=~/.vim/tags/cpp

"function Meow()
"	let g:desktop_path="lyc/"
"	execute "set path=".g:desktop_path
"endfunction
"
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


"comments <leader>c<space>
""=============================================================================================================
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1"

