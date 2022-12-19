# Set up the prompt

#autoload -Uz promptinit
#promptinit
#prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

VIM="nvim"

alias ls='ls --color=auto'
alias ll='ls -alF'

# Use modern completion system
#autoload -Uz compinit
#compinit

eval "$(starship init zsh)"

export PATH="~/.local/scripts:$PATH"

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

addToPathFront $HOME/.local/scripts

bindkey -s ^f "tmux-sessionizer\n"
