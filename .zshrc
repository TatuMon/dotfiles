# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load CARGO
. "$HOME/.cargo/env"

# Load ZOXIDE
eval "$(zoxide init zsh)"

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Alias CAT to BAT
alias cat="bat"

# MY ENV VARIABLES
export NVIMDIR="$HOME/.config/nvim/"

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH

# BUN.JS
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# VSCODE
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Some variables for Rifle
export VISUAL=nvim
export EDITOR=nvim

# Starship
eval "$(starship init zsh)"

# Created by `pipx` on 2024-04-09 13:21:39
export PATH="$PATH:/Users/tatumon/.local/bin/"

# Start TMUX
tmux a

# Alias Golang Lint
alias golint="golangci-lint"

# GOPATH
export GOPATH="$HOME/go/"
export PATH="$PATH:$GOPATH/bin/"
