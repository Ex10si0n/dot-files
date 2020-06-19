# dot-files
## Description
This is a repo of my dotfiles backup.

## Platform
> Full compability on macOS

## Includes
1. Optimization of oh my zsh installation in MainLand China.
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
* PlugIns:
```
[Layer]
let g:spacevim_layers = [
      \ 'fzf', 'better-defaults', 'which-key', 'auto-completion', 'emoji', 'c-c++', 'python', 'markdown', 'formatting', 'airline', 'file-manager',
      \'programming', 'ctags', 'editing', 'git']

[User Init]
Plug 'junegunn/seoul256.vim'
Plug 'ncm2/ncm2-jedi'
Plug 'skywind3000/vim-quickui'
Plug 'skywind3000/asynctasks.vim'
```
