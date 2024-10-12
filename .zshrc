# .zshrc
unsetopt beep
autoload -U promptinit; promptinit
prompt pure

export EDITOR=nvim
bindkey -e
alias ls='ls --color=auto'
alias cat='bat'
alias v='nvim'
alias sc_start='~/.config/scripts/suitcase_fullstack_start.sh'
alias bar_reload='~/.config/scripts/reload_bar.sh'
neofetch
set -o vi
eval "$(zoxide init --cmd cd zsh)"
