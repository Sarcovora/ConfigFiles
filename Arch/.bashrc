#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

neofetch
xrandr --output Virtual1 --mode 2560x1440

alias i3conf='vim ~/.config/i3/config'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ekuo/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ekuo/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ekuo/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ekuo/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
