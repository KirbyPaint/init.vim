set number
set history=1000
set wildmenu
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Intuitive backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
                               " around and `<CR>` to validate.

" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
 
Plug 'tyru/open-browser.vim' 						" opens url in browser
Plug 'http://github.com/tpope/vim-surround' 				" Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
au VimEnter *  NERDTree							" NERDtree on startup
Plug 'https://github.com/ap/vim-css-color'				" CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary'				" For Commenting gcc & gc
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }			" FuzZy Finder
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'						" statusline
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'	" works with vim-devicons
Plug 'https://github.com/github/copilot.vim'				" copilot

" fast as FUCK nvim completion
" main one
" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
" Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**
" Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" - shell repl
" - nvim lua api
" - scientific calculator
" - comment banner
" - etc

" Always have icons load last
Plug 'https://github.com/ryanoasis/vim-devicons' " Adds filetype icons

call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the indent method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" Autostart COQ (autocompletion)
" augroup COQ 
"         autocmd!
"         autocmd VimEnter * COQnow -s
" augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
