# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# keychain
keychain 1m
. ~/.keychain/$HOSTNAME-sh

# virtualenv wrapper
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source /usr/bin/virtualenvwrapper.sh
export PIP_DOWNLOAD_CACHE="$HOME/tmp/cache"

# PROMPT
GIT_PROMPT_THEME=Solarized
source ~/.bash-git-prompt/gitprompt.sh










