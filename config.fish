if status is-interactive
    # Commands to run in interactive sessions can go here
    bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"

end

function fish_greeting
end

starship init fish | source
alias g="git"
alias y="yarn"
alias vim="nvim"
alias vi="vim"
alias cls="clear"
alias py="python"
alias ls="exa"
alias rm="safe-rm"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

