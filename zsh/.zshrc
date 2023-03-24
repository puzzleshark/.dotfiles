#### ZSH SETUP
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export EDITOR="nvim"

fpath=($HOME/.completion_zsh $fpath)

plugins=(
    # vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
    direnv
)

source $ZSH/oh-my-zsh.sh

#### CUSTOM SETTINGS

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin

# starship configure
eval "$(starship init zsh)"

# need this option for compatibility between git and zsh
export LESS=-FRX

# alias bat="batcat" 
alias lg="lazygit"
alias task="go-task"

# for z command (cd replacement)
eval "$(zoxide init zsh)"

# fix for java applications to work with wayland (i.e intellij)
_JAVA_AWT_WM_NONREPARENTING=1


# are not in the search path set by the XDG_DATA_DIRS
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:/home/samuel/.local/share/flatpak/exports/share

export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export PYTHONPATH=$PYTHONPATH:/lib/freecad/lib/
# export NIX_PATH="$NIX_PATH:nixpkgs-overlays=~/.config/nixpkgs/overlays"
