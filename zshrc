setopt HIST_SAVE_NO_DUPS

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# ------------------------------------------------------------------------------
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# STARSHIP theme
eval "$(starship init zsh)"

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
source ~/.zsh_aliases 2> /dev/null

# ------------------------------------------------------------------------------
# Secrets, tokens, etc
# ------------------------------------------------------------------------------
# Untracked file for storing creds - this will need to be manually created
source ~/.zsh_secrets 2> /dev/null

# ------------------------------------------------------------------------------
# GO
# ------------------------------------------------------------------------------
export GOPATH=$HOME/Developer/go
export PATH=$GOPATH/bin:$PATH

# ------------------------------------------------------------------------------
# RUST
# ------------------------------------------------------------------------------
export PATH=$HOME/.cargo/bin:$PATH

# ------------------------------------------------------------------------------
# FNM - node version manager
# ------------------------------------------------------------------------------
export PATH=$HOME/.fnm:$PATH
eval "`fnm env --use-on-cd --version-file-strategy=recursive`"

# ------------------------------------------------------------------------------
# Ruby Version Manager - frum
# ------------------------------------------------------------------------------
eval "$(frum init)"

# Python Version Manager
# ------------------------------------------------------------------------------
#eval "$(pyenv init -)"
# ------------------------------------------------------------------------------
# MongoDB (to be able to use the shell)
# ------------------------------------------------------------------------------
#export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"

# ------------------------------------------------------------------------------
# Serverless framework
# ------------------------------------------------------------------------------
export PATH="$HOME/.serverless/bin:$PATH"

# ------------------------------------------------------------------------------
# Google Cloud SDK
# ------------------------------------------------------------------------------
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# ------------------------------------------------------------------------------
# Android SDK
# ------------------------------------------------------------------------------
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Added by Toolbox App
export PATH="$PATH:/Users/jsrhodes/Library/Application Support/Jetbrains/Toolbox/scripts"

