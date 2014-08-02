set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
set shell=/bin/bash
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'benmills/vimux'
Bundle 'jbrechtel/vimux-ruby-test'
Bundle 'tpope/vim-endwise'
Bundle 'edsono/vim-matchit'
Bundle 'vim-ruby/vim-ruby'
Bundle 'mileszs/ack.vim'
Bundle 'desert-warm-256'
Bundle 'derekwyatt/vim-scala'
Bundle 'jbrechtel/vim-iawriter'
Bundle 'tpope/vim-markdown'
Bundle 'vim-scripts/VimClojure'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'jamessan/vim-gnupg'
Bundle 'wikitopian/hardmode'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'rodjek/vim-puppet'
Bundle 'jinfield/vim-nginx'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'john2x/flatui.vim'
Bundle 'moll/vim-node'

colorscheme desert-warm-256

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"


"Finish vundle setup
filetype plugin indent on     " required!
syntax on

"Custom keymaps
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>rb :wa<CR> :RunAllRailsTests<CR>
map <silent> <LocalLeader>rc :wa<CR> :RunRubyFocusedContext<CR>
map <silent> <LocalLeader>rf :wa<CR> :RunRailsFocusedTest<CR>
map <silent> <LocalLeader>rl :wa<CR> :RunLastVimTmuxCommand<CR>

map <silent> <LocalLeader>rs :!ruby -c %<CR>
map <LocalLeader>rd Orequire 'ruby-debug';debugger<ESC>
setlocal isk+=?

nno <leader>t :<C-u>AsyncFinder<CR>

"Preferences
set hlsearch
set number
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
let &t_Co=256
set backspace=2
set hidden
set background=dark
set wildignore+=*.class,*.jar,.git

"Plugin customizations

let g:asyncfinder_ignore_files = "['*.swp', '*.class']"
    let g:asyncfinder_ignore_dirs = "['*.AppleDouble*','*.DS_Store*','*.git*','*.hg*','*.bzr*','*target*']"

let g:lisp_rainbows=1
let vimclojure#WantNailgun = 0

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

if system("uname") == "Darwin\n"
  set clipboard=unnamed
endif
