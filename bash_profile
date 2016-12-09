[ -f ~/.bashrc ] && . ~/.bashrc

[[ -s /Users/jbowes/.nvm/nvm.sh ]] && . /Users/jbowes/.nvm/nvm.sh # This loads NVM
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
[[ -s "/Users/jbowes/.gvm/scripts/gvm" ]] && source "/Users/jbowes/.gvm/scripts/gvm"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi


export TVM_DIR=~/code/ag/agvm/
[ -s "$TVM_DIR/tvm.sh" ] && . "$TVM_DIR/tvm.sh"

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi
