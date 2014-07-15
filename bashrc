# path for homebrew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# let ls use color
export CLICOLOR=1

#fedora like bash prompt
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export PATH=~/Library/Python/2.7/bin:$PATH

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
PATH=$PATH:$HOME/.rvm/bin

export DEVELOPER=james
