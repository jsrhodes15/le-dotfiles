# ------------------------------------------------------------------------------
##### User configuration #####
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------
# Extend history size
# ------------------------------------------------------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# ------------------------------------------------------------------------------
# Exzeo stuff
# ------------------------------------------------------------------------------
# Docker
export DOCKER_REGISTRY=registry.exzeo.io/docker
# ------------------------------------------------------------------------------
# Mongo shell
# ------------------------------------------------------------------------------
export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"
# ------------------------------------------------------------------------------
# FNM - node version manager
# ------------------------------------------------------------------------------
export PATH=$HOME/.fnm:$PATH
eval "`fnm env`"
# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
if [ -f ~/.zsh_aliases ]; then
source ~/.zsh_aliases
fi

# ------------------------------------------------------------------------------
# AutoSuggestions
# ------------------------------------------------------------------------------
if [ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi




