# .zshrc
unsetopt beep
autoload -U promptinit; promptinit
prompt pure

alias ls='ls --color=auto'
neofetch
eval "$(zoxide init --cmd cd zsh)"
