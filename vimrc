" This vim/neovim configuration file is written by @Ex10si0n
" This file is maintained in Ex10si0n/dotfiles
" Contact me if needed: yzb.ex10si0n@icloud.com
" Website: https://www.aspires.cc/
" licensed under CC BY 4.0

" Vundle plugins configuration
set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'preservim/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'mhinz/vim-startify'
Plugin 'plasticboy/vim-markdown'
Plugin 'preservim/tagbar'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()

filetype plugin indent on

" in [papercolor cool laederon]
let g:airline_theme='papercolor'
let NERDTreeShowHidden = 1
let g:vim_markdown_folding_disabled = 1
let g:space_vim_dark_background = 234
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
let g:startify_custom_header = [
			\'                                           d8P                    ',
			\'                                        d888888P                  ',
			\'         88bd88b d8888b d888b8b   d8888b  ?88"   d8888b   88bd88b ',
			\'         88P"  `d8b_,dPd8P" ?88  d8P" `P  88P   d8P" ?88  88P"  ` ',
			\'        d88     88b    88b  ,88b 88b      88b   88b  d88 d88      ',
			\'       d88"     `?888P"`?88P"`88b`?888P"  `?8b  `?8888P"d88"      ',]
let g:startify_bookmarks = [
			\ { 'v': '~/.vimrc' },
			\ { 'f': '~/.fishrc' },]
let g:startify_lists = [
			\ { 'header': ['    Bookmarks'],     'type': 'bookmarks' },
			\ { 'header': ['    MRU'],           'type': 'files' },
			\ { 'header': ['    MRU'. getcwd()], 'type': 'dir' },]


color space-vim-dark
colorscheme space-vim-dark

set nu!
set si 
set sw=4
set sts=4
set ts=4
set cursorline
set noswapfile
set nowrap
set mouse=a
set backspace=2
set laststatus=2
set wrap
set termguicolors


inoremap jk <Esc>
tnoremap jk <C-\><C-n>
nnoremap <C-q> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>
nmap <C-g> :TagbarToggle<CR>
nmap <C-f> :Files<CR>
nmap <C-c> :Commands<CR>
nmap <C-t> :sp<CR><C-w><C-j> :term<CR>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd FileType * TagbarOpen
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd CursorHold * silent call CocActionAsync('highlight')
