" hooman vim config


" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'cjuniet/clang-format.vim'
Plug 'cocopon/iceberg.vim'
Plug 'arzg/vim-substrata'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'cjuniet/clang-format.vim'
Plug 'preservim/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'Shougo/deol.nvim'
call plug#end()
set number
set cursorline
colorscheme nord 
set termguicolors
map <C-n> :NERDTreeToggle<CR>
map <C-q> :wqa<CR>
map <C-r> :source %<CR>
set mouse=a
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
hi Normal guibg=NONE ctermbg=NONE
source ~/.config/nvim/coc.vim

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let mapleader = ","
let g:indentLine_enabled = 1
let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'
set si
let g:indentLine_setColors = 1
let g:indentLine_color_gui = "#5C6370"
let g:indentLine_showFirstIndentLevel = 1

let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
