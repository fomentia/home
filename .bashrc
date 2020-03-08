#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias grims='grim -g "$(slurp)" /home/isaac/Pictures/screenshots/$(date +"%d-%m-%y-%s-grim.png")'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

(cat ~/.cache/wal/sequences &)

eval $(thefuck --alias oops)

source /usr/share/bash-completion/completions/git

sway-wal() {
    wal -n -i "$@"
    swaymsg "output - bg $@ fill"
}

gaps() {
    swaymsg "gaps $1 current set $2"
}

e() {
    emacsclient -s ~/.emacs.d/server/server -nw ${1:-.}
}

export PATH="$PATH:/home/isaac/.local/bin/"
