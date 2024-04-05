#!/bin/bash


# ------------------------------------
#               ALIASES
# ------------------------------------
alias s="source $HOME/.zshrc"
alias o="open ."
alias zshrc="nvim $HOME/.zshrc"
alias g="git"
alias qq=". ranger"
alias clr="clear"
alias ls="eza --icons"
alias lsa="eza --icons --all"
alias ll="eza --icons --long --no-user --git --git-ignore"
alias lla="eza --icons --long --no-user --git --all" 
alias tree="eza --icons --long --no-user --git --all --git-ignore --tree"
alias vim="nvim"
alias upd="brew update && brew upgrade --greedy && brew cleanup && sdk update && sdk upgrade"
alias python="python3"
alias pip="pip3"
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
alias obsi="open -a obsidian"
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"
alias cat="bat --paging=never"
alias bathelp="bat --plain --language=help"
alias lg="lazygit"
alias vim="nvim"
alias yabaiupd="yabai --stop-service && brew upgrade yabai && yabai --start-service"


# ------------------------------------
#            My IP function 
# ------------------------------------
function myip()
{
    extIp=$(dig +short myip.opendns.com @resolver1.opendns.com)

    printf "Wireless IP: "
    MY_IP=$(/sbin/ifconfig wlp4s0 | awk '/inet/ { print $2 } ' |
      sed -e s/addr://)
    echo ${MY_IP:-"Not connected"}


    printf "Wired IP: "
    MY_IP=$(/sbin/ifconfig enp0s25 | awk '/inet/ { print $2 } ' |
      sed -e s/addr://)
    echo ${MY_IP:-"Not connected"}

    echo ""
    echo "WAN IP: $extIp"

}

function take {
    mkdir -p $1
    cd $1
}

note() {
    echo "date: $(date)" >> $HOME/drafts.md
    echo "- [ ] $@" >> $HOME/drafts.md
    echo "" >> $HOME/drafts.md
}
