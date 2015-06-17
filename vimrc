set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = " "
let g:ctrlp_show_hidden = 1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeHijackNetrw=0
let t_Co=256

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<esc>'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-t>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

runtime macros/matchit.vim

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
Plugin 'osyo-manga/vim-over'
Bundle 'tpope/vim-rails'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-user'
Plugin 'matchit.zip'
Plugin 'terryma/vim-multiple-cursors'

" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

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
"set background=dark
colorscheme heroku-terminal

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
  let g:ackprg = 'ag --vimgrep --ignore-dir=.git --ignore-dir=log'
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
nnoremap <C-w>w :q<cr>
nnoremap <C-w>/ :vsp<cr>
nnoremap <C-w>- :sp<cr>

" Save
nnoremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>

" Toggles NerdTree file structure
noremap <C-n> :NERDTreeToggle<cr>

" Search in project
nnoremap <C-f> :Ack   . <Left><Left><Left><Left>

" Search and replace
nnoremap s :OverCommandLine<cr> %s/

" Remove trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
