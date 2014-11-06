filetype off " Vundle required

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" file system
Bundle 'scrooloose/nerdtree'

" git integration
Bundle 'tpope/vim-fugitive'

" syntax
Bundle 'scrooloose/syntastic'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'elzr/vim-json'

" jshint
Bundle 'walm/jshint.vim'

" powerline
Bundle 'Lokaltog/vim-powerline'

" colors
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

set nofoldenable
set nocompatible
set nobackup
set nowb
set noswapfile
set ic

" syntax highligting
syntax enable
set background=dark
let g:solarized_termcolors=256
set t_Co=16 " added for chromeos crosh chroot ubuntu
colorscheme solarized


" quiet pls
set visualbell t_vb=

" line numbers
set nu

" 2 space softabs default
set expandtab
set ts=2
set sw=2

" close vim if nerdtree is only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endifautocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" \+n toggles the nerdtree
map <leader>n :NERDTreeToggle<CR>

" ctrl f for jsbeautify
let g:jsbeautify = {"indent_size": 2, "indent_char": " "}
let g:jsbeautify_engine = "node"
map <c-f> :call JsBeautify()<cr>

" 2 space coffeescript for the love of..
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" no need to fold things in markdown all the time
let g:vim_markdown_folding_disabled = 1
