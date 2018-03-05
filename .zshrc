#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi


# trash: Moves a file to the MacOS trash
trash () { command mv "$@" ~/.Trash ; }

# Opens any file in MacOS Quicklook Preview
ql () { qlmanage -p "$*" >& /dev/null; }

# run virtualenvwrapper.sh
# source /usr/local/bin/virtualenvwrapper.sh

# ignore duplicates commands in history
export HISTCONTROL=ignoredups

# increase history size to 1000; default is 500
export HISTSIZE=1000
export SAVEHIST=1000

# Change umask to make directory sharing easier
umask 0002

# integrate GNU to command line instead of tools provided by apple
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# use GNU man pages instead of BSD ones
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:${MANPATH-/usr/share/man}"


if [ -n "$INSIDE_EMACS" ]; then
    chpwd() { print -P "\033AnSiTc %d" }
    print -P "\033AnSiTu %n"
    print -P "\033AnSiTc %d"
fi

