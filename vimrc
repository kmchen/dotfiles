syntax on
set clipboard=unnamed
set number

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" Finder for vim https://github.com/kien/ctrlp.vim
Plugin 'ctrlp.vim'

" Solarize color scheme https://github.com/altercation/vim-colors-solarized.git
Plugin 'altercation/vim-colors-solarized.git'

" ingretu color scheme
Plugin 'gmarik/ingretu'

" vim-go https://github.com/
Plugin 'fatih/vim-go'

" Tagbar https://github.com/majutsushi/tagbar 
Plugin 'majutsushi/tagbar'

" https://github.com/scrooloose/nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" https://github.com/maksimr/vim-jsbeautify
Plugin 'maksimr/vim-jsbeautify'

" https://github.com/Shutnik/jshint2.vim.git
Plugin 'Shutnik/jshint2.vim.git'

" http://www.vim.org/scripts/script.php?script_id=3681
Plugin 'functionlist.vim'

" https://github.com/royriojas/esformatter-jsx
Plugin 'royriojas/esformatter-jsx'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"syntax enable
"set background=dark
"colorscheme solarized
colorscheme ingretu

" Set line number
set nu

" Set ignore case
set ic

" go to prev tab 
map <S-H> gT
" go to next tab
map <S-L> gt

" set leader to ,
let mapleader=","
let g:mapleader=","

"replace the current word in all opened buffers
"map <leader>r :call Replace()<CR>
set wmw=0
set wmh=0
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Bind F8 to tagbar majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>

" let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Set Gotags location. e.g. gotags -R . > tags
set tags=$CSIPATH/tags;/

" Set make to go build
set makeprg=go\ build

map <F4> :tselect<CR>

" Golang tags https://github.com/jstemmer/gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" set tabstop=4 shiftwidth=4 expandtab
set shiftwidth=2
set tabstop=2 
set softtabstop=2
"autocmd FileType javascript,jade,json set shiftwidth=2 tabstop=2 softtabstop=2
set expandtab       " tabs are spaces

" ----- Nerdtree ----- "
"nmap means map in normal mode
"imap means map in insert mode
"the nore part in nnoremap and its friends prevent expanding the mapping recursively.
"For example, i use to also hide search string so, in my vimrc I have
"nnoremap <silent> <C-L> :noh<CR><C-L>
"Without the nore, the above mapping will loop.
nnoremap <F5> :NERDTreeToggle<CR>
"map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
