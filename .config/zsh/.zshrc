zle_highlight=('paste:none')

unsetopt BEEP

autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

autoload -Uz colors && colors

alias ls='ls --color=auto'
alias la='ls -d .* --color=auto'
alias ll='ls -la'

