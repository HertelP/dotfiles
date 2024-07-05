# .zshrc
unsetopt beep
autoload -U promptinit; promptinit
prompt pure

export EDITOR=nvim
alias ls='ls --color=auto'
neofetch
eval "$(zoxide init --cmd cd zsh)"
