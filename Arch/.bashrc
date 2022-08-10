#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# neofetch
# figlet -f ~/.config/figletFonts/3d.flf "Hi Evan!"
# xrandr --output Virtual-1 --mode 2560x1440
eval "$(starship init bash)"

# Config Shortcuts
alias i3conf='nvim ~/.config/i3/config'
alias polyconf='nvim ~/.config/polybar/config.ini'
alias termconf='nvim ~/.config/termite/config'
# alias kitconf='nvim ~/.conifg/kitty/kitty.conf'
alias piconf='nvim ~/.config/picom/picom.conf'
alias nvconf='nvim ~/.config/nvim/init.vim'
alias baconf='nvim ~/.bashrc'

# Application Shortcuts
alias nv='nvim'
alias r='ranger'
alias ada='git add .'
alias commit='git commit -m "updates"'
alias pull='git pull'
alias push='git push'

# Command shortcuts
alias cls='clear'
alias hcls='cd ~ && clear'
alias nf='neofetch'

# Display Stuff
alias disp25='xrandr --output Virtual-1 --mode 2560x1440'
alias disp19='xrandr --output Virtual-1 --mode 1920x1080'

updateconfs () {
    cp -r ~/.bashrc ~/.zshrc ~/.config/i3 ~/.config/picom ~/Github/ConfigFiles/Arch/
    
    cp -r ~/.config/polybar ~/.config/termite ~/.config/rofi ~/Github/ConfigFiles/Arch/

    cp -r ~/.config/betterlockscreenrc ~/Github/ConfigFiles/Arch/
    
    cp -r ~/.local/share/applications/feh.desktop ~/.config/kitty ~/Github/ConfigFiles/Arch/
    
    cp -r ~/.config/neofetch ~/.config/ranger ~/.config/nvim/ ~/Github/ConfigFiles/Arch/

    cp -r ~/.config/figletFonts/ ~/.config/starship.toml ~/Github/ConfigFiles/Arch/
    
    cd ~/Github/ConfigFiles && git status
}

coni () {
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
}


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
