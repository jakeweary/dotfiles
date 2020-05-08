if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'arcticicestudio/nord-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree' 
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'leafgarland/typescript-vim'
call plug#end()

colorscheme nord

let g:airline_extensions = []
" let g:airline_powerline_fonts = 1
" let g:airline_skip_empty_sections = 1

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

set ttyfast
set mouse=a
set ttymouse=xterm2
set laststatus=2
set noshowmode
set number
set splitbelow
set splitright

map <C-n> :NERDTreeToggle<CR>
