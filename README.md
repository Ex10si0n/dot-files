# dot-files
## Description
This is a repo of my dotfiles backup.

## Platform
> Full compability on macOS Monterey

## Includes
1. Optimization of oh my zsh installation in China.
```bash
sudo bash oh-my-zsh-install.sh
```

2. My `.zshrc`
* Prerequisite:
    * Powerline9K (installation see: [Powerline9K](https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions) )
    * figlet (`brew install figlet`)
* PlugIns:
    * git
    * zsh-autosuggestions
    * zsh-syntax-highlighting

3. My `.vimrc`
* Prerequisite:
    * space-vim (installation see: [liuchengxu/space-vim](https://github.com/liuchengxu/space-vim))
    * ctags (`brew install ctags`)
* PlugIns:
```bash
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
```

* KeyBoard Map
```
inoremap jk <Esc>
```
