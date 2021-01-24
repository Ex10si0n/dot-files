set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'liuchengxu/space-vim-dark'
call vundle#end()

filetype plugin indent on

let g:airline_theme='understated'
let NERDTreeShowHidden = 1
let g:vim_markdown_folding_disabled = 1
colorscheme space-vim-dark
hi Comment cterm=italic
let g:space_vim_dark_background = 234
color space-vim-dark

set nu!
set si 
set sw=4
set sts=4
set ts=4
set cursorline
set nowrap
set mouse=a
set backspace=2



autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


nnoremap <C-t> :NERDTreeToggle<CR>
inoremap jk <Esc>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
