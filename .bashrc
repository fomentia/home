#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/liquidprompt/liquidprompt

alias ls='ls --color=auto'

alias grims='grim -g "$(slurp)" /home/isaac/Pictures/screenshots/$(date +"%d-%m-%y-%s-grim.png")'
alias sptd='pkill spotifyd && spotifyd'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

(cat ~/.cache/wal/sequences &)

eval $(thefuck --alias oops)

source /usr/share/bash-completion/completions/git

sway-wal() {
    wal -n -i "$@"
    swaymsg "output * bg $@ fill"
}

gaps() {
    swaymsg "gaps $1 current set $2"
}

e() {
    emacsclient -s ~/.emacs.d/server/server -nw ${1:-.}
}

alias g="git"
__git_complete g _git
alias gs="git status"
__git_complete gs _git_status
alias gp="git push --follow-tags"
__git_complete gp _git_push

export MOZ_ENABLE_WAYLAND=1
export PATH="$PATH:$HOME/.local/bin/"

export EDITOR="emacsclient -s ~/.emacs.d/server/server -nw"
export VISUAL="emacsclient -s ~/.emacs.d/server/server -nw"

source $HOME/.bashrc_private
