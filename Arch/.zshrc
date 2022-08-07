# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ekuo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


eval "$(starship init zsh)"

alias i3conf='nvim ~/.config/i3/config'
alias polyconf='nvim ~/.config/polybar/config.ini'
alias termconf='nvim ~/.config/termite/config'
alias piconf='nvim ~/.config/picom/picom.conf'
alias nvconf='nvim ~/.config/nvim/init.vim'
alias baconf='nvim ~/.bashrc'
alias nv='nvim'
alias ada='git add .'
alias commit='git commit -m "updates"'
alias pull='git pull'
alias push='git push'

alias cls='clear'

alias disp25='xrandr --output Virtual-1 --mode 2560x1440'
alias disp19='xrandr --output Virtual-1 --mode 1920x1080'
updateconfs () {
    cp -r ~/.bashrc ~/.config/i3 ~/.config/picom ~/.config/polybar ~/.config/termite ~/.config/rofi ~/Github/ConfigFiles/Arch/
    cp -r ~/.config/neofetch ~/.config/ranger ~/.config/nvim/ ~/.config/figletFonts/ ~/.config/starship.toml ~/Github/ConfigFiles/Arch/
    cd ~/Github/ConfigFiles && git status
}
