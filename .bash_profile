TERM=xterm-256color
source ~/.dotfiles/.bin/tmuxinator.bash


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PS1="\u@\h:\W \n\$ "
