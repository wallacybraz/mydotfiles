#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
    PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

alias ls='ls --color=auto'

alias ll='ls -laph --color=auto'

alias i3conf='vim /home/wallacy/.config/i3/config'

export PATH="/home/wallacy/.gem/ruby/2.4.0/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
