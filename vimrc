set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = " "
let g:ctrlp_show_hidden = 1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeHijackNetrw=0
let &t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tomasr/molokai'
Plugin 'slim-template/vim-slim.git'
Plugin 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
set background=dark
colorscheme molokai

set runtimepath^=~/.vim/bundle/ctrlp.vim
set relativenumber
set number
set hls

set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set mouse=nicr
set backspace=indent,eol,start

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" automatically rebalance windows on vim resize
augroup vimresizing
  autocmd!
  autocmd VimResized * :wincmd =
augroup END

augroup commenting
  autocmd!
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END

augroup remove_whitespace_on_save
  autocmd!
  autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
augroup END

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" vim panes
nnoremap <C-w>q :q<cr>
nnoremap <C-w>/ :vsp<cr>
nnoremap <C-w>- :sp<cr>

nnoremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>

noremap <C-n> :NERDTreeToggle<cr>

" Remove trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
