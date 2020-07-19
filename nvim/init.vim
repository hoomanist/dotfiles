set termguicolors

call plug#begin('~/.vim/plugged')
Plug 'arzg/vim-substrata'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
call plug#end()
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

set number
set relativenumber
set cursorline
colorscheme substrata
map <C-n> :NERDTreeToggle<CR>
map <C-q> :wqa<CR>
set mouse=a
hi Normal guibg=NONE ctermbg=NONE
