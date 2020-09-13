## Hooman's zshrc
# path
export PATH=/home/hooman/scripts:$PATH

# alias
alias gis="git status"
alias gcm="git commit -m"
alias gia="git add -A"
alias todo="vim ~/todo"
alias v="nvim"
alias vim="nvim"
alias n="ncmpcpp"
alias ls="ls -lta --color=tty"
# antigen 
source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen apply
# prompt
PROMPT='%n@%M:%~ %# '
# nord tty
pgrep Xorg &> /dev/null || source ~/nord-tty/nord-tty
# tmux
alias tmux="tmux attach -t default || tmux new -s default"
# colorful man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;34m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
# Nix 
if [ -e /home/hooman/.nix-profile/etc/profile.d/nix.sh ]; then . /home/hooman/.nix-profile/etc/profile.d/nix.sh; fi
