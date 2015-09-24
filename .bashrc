#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -l --color=auto'
alias cl='clear'
PS1='[\u@\h \W]\$ '
#screenfetch

export TERM=xterm-256color

function spdif {
if [[ $1 = "on" ]]; then
amixer -c 0 sset "IEC958",16 $1
elif [[ $1 = "off" ]]; then
amixer -c 0 sset "IEC958",16 $1
else
echo "Do you want to turn S/PDIF Digital Output on or off?"
fi
}
