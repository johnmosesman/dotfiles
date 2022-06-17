set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = " "

let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|ios\/build\|.beam\|deps\|_build\|tmp\|dist\|bower_components\|.keep'

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

let g:mustache_abbreviations = 1

let g:vim_svelte_plugin_load_full_syntax = 1

" Airline plugin
"let g:airline#extensions#tabline#enabled = 1    " Enable the list of buffers
"let g:airline#extensions#tabline#buffer_idx_mode = 1

" make test commands execute using dispatch.vim
let test#strategy = "dispatch"

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
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-user'
Plugin 'matchit.zip'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'janko-m/vim-test'
Plugin 'nanotech/jellybeans.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'avdgaag/vim-phoenix'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'leafgarland/typescript-vim'
Plugin 'evanleck/vim-svelte'
"Plugin 'leafOfTree/vim-svelte-plugin'
Plugin 'tomlion/vim-solidity'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

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
set background=dark
colorscheme PaperColor

set runtimepath^=~/.vim/bundle/ctrlp.vim
set relativenumber
set number
set hls
set laststatus=2  " Always show the status bar
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set clipboard=unnamed

if executable('ag')
  let g:ackprg = 'ag --vimgrep --ignore-dir=.git --ignore-dir=log --ignore-dir=vendor'
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

nnoremap ; :

" Map to better comment-out
nnoremap ,, :call nerdcommenter#Comment(0, "toggle")<CR>
vnoremap ,, :call nerdcommenter#Comment(0, "toggle")<CR>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>` :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Save
nnoremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>

" Toggles NerdTree file structure
noremap <C-n> :NERDTreeToggle<cr>

" Search in project
nnoremap <C-f> :Ack -Q "" .<Left><Left><Left>

" Indent and outdent
nnoremap < <<
nnoremap > >>

" Search and replace
"nnoremap s :OverCommandLine<cr> %s/

" Copy to the end of the line
nnoremap Y y$

" Clear search highlight
nnoremap // :set nohls<cr>

" Remove trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

"nmap <leader>1 <Plug>AirlineSelectTab1
"nmap <leader>2 <Plug>AirlineSelectTab2
"nmap <leader>3 <Plug>AirlineSelectTab3
"nmap <leader>4 <Plug>AirlineSelectTab4
"nmap <leader>5 <Plug>AirlineSelectTab5
"nmap <leader>6 <Plug>AirlineSelectTab6
"nmap <leader>7 <Plug>AirlineSelectTab7
"nmap <leader>8 <Plug>AirlineSelectTab8
"nmap <leader>9 <Plug>AirlineSelectTab9
"nmap <leader>[ <Plug>AirlineSelectPrevTab
"nmap <leader>] <Plug>AirlineSelectNextTab

nnoremap <leader>d :bd<cr>

" vim panes
nnoremap <leader>w :q<cr>
nnoremap <leader>/ :vsp<cr>
nnoremap <leader>- :sp<cr>

nnoremap <leader>p "+p<cr>

" https://github.com/janko-m/vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

map <leader>c :let @+ = expand("%")<cr>
