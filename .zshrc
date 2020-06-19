export ZSH="/Users/ex10si0n/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"

# PowerLine Settings
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="000"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="121"
POWERLEVEL9K_DIR_HOME_BACKGROUND="027"
POWERLEVEL9K_DIR_HOME_FOREGROUND="015"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="027"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="015"
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="grey7"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="grey7"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="grey7"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="007"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="007"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="007"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_NODE_VERSION_BACKGROUND="black"
POWERLEVEL9K_NODE_VERSION_FOREGROUND="007"
POWERLEVEL9K_NODE_VERSION_VISUAL_IDENTIFIER_COLOR="002"
POWERLEVEL9K_RAM_BACKGROUND="000"
POWERLEVEL9K_RAM_FOREGROUND="007"
POWERLEVEL9K_RAM_VISUAL_IDENTIFIER_COLOR="001"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
POWERLEVEL9K_TIME_BACKGROUND="grey7"
POWERLEVEL9K_TIME_FOREGROUND="007"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M} %F{003}\uF017"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('context' 'dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( 'node_version' 'ram_joined' 'load' 'time')
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B2'


plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=#0087ff,bold,underline"

export TERM="xterm-256color"
source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ex10si0n/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ex10si0n/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ex10si0n/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ex10si0n/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="/Users/ex10si0n/opt/anaconda3/bin:$PATH"

# Set HTTP Proxy
export http_proxy="http://127.0.0.1:1087"
export https_proxy="http://127.0.0.1:1087"

# Set Alias
alias ls='colorls'
alias cat='bat'
alias chrome='open -a Google\ Chrome'
alias safari='open -a Safari'
alias typora='open -a Typora'
alias vscode='open -a Visual\ Studio\ Code'
alias wechat='open -a Wechat'
alias sublime='open -a Sublime\ Text'
alias pdfexpert='open -a PDF\ Expert'
alias zoom='open -a zoom.us'
alias a='tmux a'
alias cls='clear'
alias nas='open /Volumes/Network\ Storage'
alias cdnas='cd /Volumes/Network\ Storage'
alias msl='ssh msl'
alias gitpush='git add .; git commit -m "Update", git push'
alias tomcatroot='cd /usr/local/Cellar/tomcat/9.0.35/libexec/webapps'
# Auto Run Script

eval $(thefuck --alias)
figlet -f banner3-D -w 200 Ex10si0n | lolcat
