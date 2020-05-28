" ┌──────────┐
" │ SETTINGS │
" └──────────┘
syntax on
filetype plugin indent on

set ttyfast
set ttymouse=xterm2
set mouse=a
set laststatus=2
set noshowmode
set showcmd
set nowrap
set number
set cursorline
set colorcolumn=81
set hlsearch
set incsearch
set splitbelow
set splitright
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" ┌──────────┐
" │ MAPPINGS │
" └──────────┘
no <silent> <space><space> :FZF<cr>
no <silent> <space>s :w<cr>
no <silent> <space>q :q<cr>
no <silent> <space>t :NERDTreeToggle<cr>
no <silent> <space>ws :set list!<cr>
no <silent> <space>ww :set wrap!<cr>
vno <silent> <space>y y:call Osc52()<cr>
nno <silent> <space>c :let @/='\<'.expand('<cword>').'\>'<cr>cgn
xno <silent> <space>c "sy:let @/=@s<cr>cgn
ino jk <esc>

" ┌───────────┐
" │ FUNCTIONS │
" └───────────┘
function! Osc52()
  let reg = shellescape(@", 1)
  let b64 = '$(echo -n '.reg.' | base64 -w0)'
  sil exe '!echo -ne "\e]52;c;'.b64.'\a"'
  redraw!
endf

" ┌───────────────┐
" │ PLUGIN CONFIG │
" └───────────────┘
let g:python_recommended_style = 0
let g:rust_recommended_style = 0

let g:nord_cursor_line_number_background = 1
" let g:nord_uniform_status_lines = 1
" let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
let g:nord_bold = 0
let g:nord_italic = 0
let g:nord_italic_comments = 0
let g:nord_underline = 0

let g:airline_extensions = []
" let g:airline_powerline_fonts = 1
" let g:airline_skip_empty_sections = 1
" let g:airline#extensions#tabline#enabled = 1

" let g:NERDTreeWinSize = 24
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" ┌────────────────┐
" │ PLUGIN LOADING │
" └────────────────┘
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  Plug 'arcticicestudio/nord-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

colorscheme nord
