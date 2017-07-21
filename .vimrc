set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required

packadd! matchit

set wildmenu
set hls
set nu
set tabstop=4
set shiftwidth=4
set nowrap
set directory=~/.vim/swap//

autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

" Ctrl-Space for completions. Heck Yeah!
 inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
         \ "\<lt>C-n>" :
         \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
         \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
         \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
