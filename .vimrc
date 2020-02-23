
"-- Begin Vundle configuration --

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" Github hosted version
Plugin 'wincent/command-t'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"-- Plugins installed by me
Plugin 'Valloric/YouCompleteMe'
"-- This may conflict with YCM
Plugin 'fatih/vim-go'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdcommenter'

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

"-- End Vundle Configuration --

"-- Syntax Highlighting
"filetype plugin indent on "Already set in vundle configuration
syntax on

"-- Default tree view for netrw
let g:netrw_liststyle = 3

"-- Autocomplete --
set omnifunc=syntaxcomplete#Complete

"-- Emulate sublime directory listing --
let g:netrw_altv=1

"-- Backspace functionality emullating other programs --
set backspace=indent,eol,start

"-- YCM doc window --
"let g:ycm_autoclose_preview_window_after_completion = 1

"-- copy paste with double single quote
vmap '' :w !pbcopy<CR><CR>


"-- SNIPPETS --
nnoremap ,sei :-1read $HOME/.vim/snippets/sei-html.vimsnip<CR>3jwf>a

"-- Common Javascript
inoremap ,tc try {<CR><CR>} catch (err) {<CR><CR>}<UP><UP><UP>
inoremap ,rr (req, res) => {<CR><CR>}<Up>
inoremap ,rrn (req, res, next) => {<CR><CR>}<UP>
inoremap ,arr async (req, res) => {<CR><CR>}<UP>
inoremap ,arrn async (req, res, next) => {<CR><CR>}<UP>

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

set smartindent
set tabstop=4
set shiftwidth=4
"set expandtab

"-- required for NERDcomment
filetype plugin on
