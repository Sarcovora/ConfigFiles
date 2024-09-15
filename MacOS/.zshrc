# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# NOTE: Commented out
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh # NOTE: commented out

eval "$(/opt/homebrew/bin/brew shellenv)"

ZSH_THEME="powerlevel10k/powerlevel10k" # NOTE: commented out

HYPHEN_INSENSITIVE="true" # NOTE: commented out

zstyle ':omz:update' mode reminder  # just remind me to update when it's time # NOTE: commented out

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git) # NOTE: commented out

source $ZSH/oh-my-zsh.sh # NOTE: commented out

# zen.zsh
# fpath+="$HOME/.zsh/zen"
# autoload -Uz promptinit
# promptinit
# prompt zen

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh NOTE: uncomment this line

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ekuo/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ekuo/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ekuo/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ekuo/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# history
HISTFILE='/Users/ekuo/.zsh_history'
HISTSIZE=9999999
SAVEHIST=$HISTSIZE

export EDITOR='nvim'
export VISUAL='nvim'

# ls aliases
alias l='eza -lah'
alias la='eza -lAh'
alias ll='eza -lh'
alias ls='eza -G'
alias lsa='eza -lah'

# program aliases
alias lg='lazygit'

alias z='__zoxide_z'
alias zi='__zoxide_zi'

alias vim='nvim'
alias vi='nvim'

alias bat='bat -A'

alias ca='conda activate'

# tmux
alias tl='tmux ls'
alias tn='tmux new -s'
alias ta='tmux a -t'

# ssh cereal
alias trix='ssh evankuo@trix.cs.utexas.edu'
alias xtrix='ssh -X evankuo@trix.cs.utexas.edu'

alias frost='ssh evankuo@frosted-flakes.cs.utexas.edu'
alias kix='ssh evankuo@kix.cs.utexas.edu'

alias onyx='ssh evankuo@onyx.cs.utexas.edu'
alias chess='ssh evankuo@chess.cs.utexas.edu'
alias citrine='ssh evankuo@citrine.cs.utexas.edu'

# ssh arch machines
alias alpaca='ssh ek9675@3.16.7.149'
alias dodo='ssh ek9675@52.14.97.212'

# ssh csres
alias hockey='ssh -X air_hockey@pearl-cluster.csres.utexas.edu'
alias poincare='ssh ekuo@poincare.csres.utexas.edu'

# functions
yy () {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" 
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")"  && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]
	then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# evals
eval "$(zoxide init zsh)"
eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
