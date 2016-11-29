

"== General Config ==
set nocompatible
syntax on
set backspace=indent,eol,start          "Allow backspace in insert mode
set history=1000                        "Store a lot of cmds in history
set gcr=a:blinkon0                      "Disable cursor blink
set number                              "Display Line Numbers
set showmode                            "Show current mode down bottom
set autoread                            "Reload files changed outside vim
set hidden


" ================ Persistent Undo =============================
" " Keep undo history across sessions, by storing in file.
if has('persistent_undo')
   silent !mkdir ~/.vim/backups > /dev/null 2>&1
   set undodir=~/.vim/backups
   set undofile
endif


" =============== Vundle Plugins Config =========================
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" +HELP+ Vundle Plugin Loader -> quick HELP:
 	" :PluginList       - lists configured plugins
	" :PluginInstall    - installs plugins; append `!` to update or just
	" :PluginUpdate
	" :PluginSearch foo - searches for foo; append `!` to refresh local cache
	" :PluginClean      - confirms removal of unused plugins; append `!` to
	" auto-approve removal	
	"_
" ------------------Install plugins below------------------------
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
        Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
        Plugin 'ryanoasis/vim-devicons'
        Plugin 'Xuyuanp/nerdtree-git-plugin'
" ---------------------------------------------------------------
call vundle#end()

filetype plugin indent on
" ================ Indentation ======================
"
  set autoindent
  set smartindent
  set smarttab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab
  "Auto ident pasted text
  nnoremap p p=`]<C-o>
  nnoremap P P=`]<C-o>

"NerdTree Config
	"Open nerdTree when no file is specified
	  autocmd StdinReadPre * let s:std_in=1
	"Map ctrl-n open NERDTREE
	  map <C-n> :NERDTreeToggle<CR>
          let NERDTreeMinimalUI = 1
          let NERDTreeDirArrows = 1

"Devicons
         set encoding=utf8
         set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 11
         let g:airline_powerline_fonts=1

