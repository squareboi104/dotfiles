" VimRC

" --Plugins--

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' "https://github.com/VundleVim/Vundle.vim

" Plugins go down here
" Keep Plugin commands between vundle#begin/end.
"Plugin 'preservim/nerdtree' "https://github.com/preservim/nerdtree
"Plugin 'mattn/emmet-vim' "https://github.com/mattn/emmet-vim
"Plugin 'vim-airline/vim-airline' "https://github.com/vim-airline/vim-airline
"Plugin 'vim-airline/vim-airline-themes' "https://github.com/vim-airline/vim-airline-themes
Plugin 'itchyny/lightline.vim' "https://github.com/itchyny/lightline.vim
"Plugin 'joshdick/onedark.vim' "https://github.com/joshdick/onedark.vim

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


" --General configuration--

" Leader key
let mapleader=','

" Encoding
set encoding=utf-8

" View numbers in the left
set number relativenumber

" Set tab size
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Increment the search
set incsearch
 
" Hightlight the word search (and will also highlight all of them )
set hlsearch!

" Ignore case
set ignorecase

" Syntax
syntax on

" List for compleion (Ctrl+n)
set wildmode=longest,list,full

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Line in the cursor
set cursorline

" Display completion matches in a status line
set wildmenu

" View button clicked
set showcmd

" See some info in the bottom right
set ruler

" Needed for lightline plugin
set laststatus=2

" Dont show -- INSERT --
set noshowmode

" Open the config file
nmap <leader>n :tabe $HOME/.config/nvim/init.vim <CR>

" --Auto complete (), {}, [], etc--

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ` ``<Left>
inoremap < <><Left>

inoremap ) ()
inoremap } {}
inoremap ] []


" --Look--

" Background dark/light
" set background=light

" Colorscheme. Can be -> default, blue, darkblue, delek, desert, elflord, evening, industry, koehler, morning, murphy, pablo, peachpuff, ron, shine, slate, torte, zellner
colorscheme pablo


" --Remaps--
" -> https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)

" When press S replace text
nnoremap S :%s/g<Left>

" Compile and run C/C++ source
map <leader>c :w <CR> :!clear ; gcc % -o %< ; ./%< <CR>

" Compile C/C++ source
map <leader>C :w <CR> :!clear ; gcc % -o %<<CR>

" Run python code
map <leader>p :w <CR> :!clear ; python3 % <CR>

" Run bash script
map <leader>b :w <CR> :!clear ; ./% <CR>

"Tab and window management
nmap <C-s>n :tabnew<Enter>
nmap <C-s>e :tabedit 
nmap <C-s>l :tabn<Enter>
nmap <C-s>h :tabp<Enter>
nmap <C-s>x :tabc<Enter>
nmap <C-s>o :tabo<Enter>
nmap <C-w>V :vsplit<Enter>

"Terminals
nmap <leader>t :below split +term <Enter> :resize 17 <Enter> i clear <Enter>
"nmap <leader>T :below split +terminal<Enter>
"nmap <leader>T :vsplit +terminal<Enter>


" --Plugins configuration--

" Emmet
" Remaps
"let g:manu_emmet_mode='n' "Complition will only work in normal mode 
"let g:manu_emmet_leader_key=',' "Instead of C+y+, is now ,+,

"Vim airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_theme='base16_google'
" let g:airline_theme='onedark'
"let g:airline_statusline_ontop=1

" Lightline (:h g:lightline.colorscheme)
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
