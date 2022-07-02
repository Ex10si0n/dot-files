" This vim/neovim configuration file is written by @Ex10si0n
" This file is maintained in Ex10si0n/dotfiles 
" Contact me if needed: yzb.ex10si0n@icloud.com 
" Website: https://www.aspires.cc/ 
" licensed under CC BY 4.0 Vundle plugins configuration

set nocompatible
filetype off
syntax on 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'Yggdroot/indentLine'

" Completitions
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'github/copilot.vim'

" Visual
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Usability
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/fzf'

" Zen Mode (Goyo)
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

" Colorschemes
Plugin 'liuchengxu/space-vim-dark'
Plugin 'jdsimcoe/abstract.vim'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'preservim/vim-colors-pencil'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }

" Highlight

call vundle#end()
filetype plugin indent on


" UX Preference
set nu!
set si
set sw=4
set sts=4
set ts=4
set noswapfile
set nowrap
set mouse=a
set backspace=2
set laststatus=2
set wrap
set clipboard+=unnamed


" Key Mapping
inoremap jk <Esc>
tnoremap <C-\><C-n>


" Visual Preference
set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h13
colorscheme abstract " onehalfdark space-vim-dark monokai_pro
set background=dark

let ey = ['         888888 Yb  dP   .d  dP"Yb  .dP"Y8 88  dP"Yb  88b 88    Yb  dP   db    88b 88 ', 
			\'         88__    YbdP  .d88 dP   Yb `Ybo." 88 dP   Yb 88Yb88     YbdP   dPYb   88Yb88 ', 
			\'         88""    dPYb    88 Yb   dP o.`Y8b 88 Yb   dP 88 Y88      8P   dP__Yb  88 Y88 ', 
			\'         888888 dP  Yb   88  YbodP  8bodP` 88  YbodP  88  Y8     dP   dP""""Yb 88  Y8',]

let fr = ['      🍐🍌🍋🍋🍊🍊🍎🍎🍎 ',
	\'      🍐🍏🍌🍋🍋🍊🍊🍎🍎 ',
	\'      🍆🍐🍐🍌🍋🍋🍊🍊🍎 ',
	\'      🍇🍇🍏      🍋🍊🍊 ',
	\'      🍎🍆🍇  ⁣😎  🍋🍋🍊',
	\'      🍒🍓🍇      🍌🍋🍋 ',
	\'      🍊🍎🍉🍇🍆🍐🍐🍌🍋 ',
	\'      🍊🍊🍓🍎🍇🍇🍏🍐🍌 ',
	\'      🍋🍊🍊🍎🍓🍇🍇🍐🍏 ',]

let g:startify_custom_header = ey

let g:startify_bookmarks = [
			\ { 'v': '~/.vimrc' },
			\ { 'f': '~/.fishrc' },]

let g:startify_lists = [
			\ { 'header': ['    Bookmarks'],     'type': 'bookmarks' },
			\ { 'header': ['    MRU'. getcwd()], 'type': 'dir' },]
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 0
hi Pmenu ctermbg=233


" Coc.nvim Settings
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')


" Shortcuts
" Control - Z: Toggle (Z)en mode
" Control - T: Toggle builtin (T)erminal
" Control - N: Toggle (N)erdTree
" Control - M: Toggle TagBar (M)iniMap
" Control - F: (F)uzzey Finder
nnoremap <silent> <C-g> :Goyo<cr>
nmap <C-t> :sp<CR><C-w><C-j> :term<CR>
tnoremap jk <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-m> :TagbarToggle<CR>
nnoremap <C-f> :FZF<CR>


" Auto commands
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype jade setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
autocmd Filetype markdown colorscheme pencil 
autocmd Filetype markdown setlocal background=light


" Functions
" Goyo
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Tabularize when receiving '|'
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

