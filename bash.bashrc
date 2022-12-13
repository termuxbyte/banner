# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

clear

cmatrix -f -u 3

#sl -alFc | lolcat

#toilet "code-Nea" --gay

toilet -f term -F border --gay ...... . .  B i e n v e n i d o    N E A  . . .....

#figlet -f slant code-Nea | lolcat

date=$(date)

         echo "=================${date}===" | lolcat



###     echo "===============================================" | lolcat

#duf /storage/emulated/0

#pfetch

neofetch --bold off --colors 4 1 8 5 8 7

#setterm -foreground red

#figlet -f banner Termux

#        echo "==================================== v 0.118.0 =" | lolcat

#PS1='\[\e[0;38;5;35m\]➜ \[\e[0;38;5;31m\]\W \[\e[0;38;5;204m\]NEA \[\e[0;38;5;162m\]\$\[\e[0m\] '
PS1='\[\e[0;48;5;91m\]\W\[\e[0;38;5;34m\]:\[\e[0;48;5;52m\] NEA \[\e[0;38;5;28m\]{\[\e[0;5;38;5;202m\]\$\[\e[0;38;5;28m\]}\[\e[0m\] '

ulimit -S -u 100

### ALIAS

alias up='apt update && apt upgrade && apt update --fix-missing'
alias list='apt list'
alias rem='apt remove --purge'
alias installed='apt install'
alias clean='apt autoremove && apt autoclean && apt clean && cd /data/data/com.termux/cache && rm -rf *'
alias history='cat /dev/null > ~/.bash_history'
alias lim='cd .cache && rm -rf * && cd && cd '
alias bashrc='cd .. && cd usr && cd etc && nano bash.bashrc && cd'
alias ipe='ifconfig'
alias sear='apt search'
alias neot="cd .config && cd neofetch && nano config.conf && cd"
alias sour="cd $PREFIX/etc && source bash.bashrc && cd"
alias reload='termux-reload-settings'
alias root="proot -0 -b -w $PREFIX/bin/bash"
alias sett='termux-reload-settings'

##     proot-distro

alias distro="proot-distro install"
alias distro-rem="proot-distro remove"
alias distro-clean="proot-distro clear-clean"
alias archlinux="proot-distro login archlinux"

## fzf

alias pk="pkg list-all 2> /dev/null | grep -v -E '^Listing\.\.\.' | sed -r 's#^([^/]+)/.*\$#\\1#' | fzf --multi --preview 'pkg show {} 2> /dev/null | bat --color=always --pager=never --decorations=never --language=yaml' --preview-window='down:50%:wrap' | xargs -ro pkg install"
