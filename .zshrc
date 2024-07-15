# .zshrc
unsetopt beep
autoload -U promptinit; promptinit
prompt pure

export EDITOR=nvim
bindkey -e
alias ls='ls --color=auto'
alias sc_start='~/.config/scripts/suitcase_fullstack_start.sh'
neofetch
eval "$(zoxide init --cmd cd zsh)"
