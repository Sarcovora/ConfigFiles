#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

neofetch
# xrandr --output Virtual-1 --mode 2560x1440
eval "$(starship init bash)"

alias i3conf='nvim ~/.config/i3/config'
alias polyconf='nvim ~/.config/polybar/config.ini'
alias termconf='nvim ~/.config/termite/config'
alias piconf='nvim ~/.config/picom/picom.conf'
alias nv='nvim'

alias disp25='xrandr --output Virtual-1 --mode 2560x1440'
alias disp19='xrandr --output Virtual-1 --mode 1920x1080'
alias updateconfs='cp -r ~/.bashrc ~/.config/i3 ~/.config/picom ~/.config/polybar ~/.config/termite ~/.config/rofi ~/.config/ranger ~/.config/starship.toml ~/Github/ConfigFiles/Arch/ && cd ~/Github/ConfigFiles && git status'

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

