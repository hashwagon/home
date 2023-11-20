call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes


" https://github.com/OmniSharp/omnisharp-vim
Plug 'OmniSharp/omnisharp-vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'

" Auto complete | Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" On with your regularly scheduled .vimrc

" Key Mapping
:map <C-n> :NERDTreeToggle<CR>
:map <C-p> :GFiles<CR>
:map <C-f> :Files<CR>

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Changing CoC color.
highlight CocHintFloat ctermfg=Red  guifg=#ff0000

" Show line and column numbers in the status line
set ruler

" Enable mouse support in all modes
" set mouse=a

" Enable relative line numbers (useful for navigation)
set relativenumber

" Enable a better status line with various information
set laststatus=2
