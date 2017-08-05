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

export EDITOR=nvim
export PATH=~/Library/Python/2.7/bin:$PATH

export PATH=$PATH:~/.gem/ruby/2.4.0/bin

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/.gem/ruby/2.0.0/bin

export DEVELOPER=james

PATH="/Users/jbowes/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/Users/jbowes/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/jbowes/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/jbowes/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/jbowes/perl5"; export PERL_MM_OPT;
