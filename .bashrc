# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias c="clear"
alias q="exit"
alias n="neofetch --w3m ~/Wallpapers/920633.jpg"
alias s="shutdown -h now"
alias r="ranger"
alias re="reboot"
alias i3="vim ~/.config/i3/config"
alias brc="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"
alias xrc="vim ~/.Xresources"
alias pipes="./pipes.sh"
