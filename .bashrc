#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.local/bin
export EDITOR=vim

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/afg/Documents/google-cloud-sdk/path.bash.inc' ]; then . '/home/afg/Documents/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/afg/Documents/google-cloud-sdk/completion.bash.inc' ]; then . '/home/afg/Documents/google-cloud-sdk/completion.bash.inc'; fi

[[ -x /bin/fish ]] || return
[[ -z $FORCEBASH ]] && exec fish
unset FORCEBASH
alias bash='FORCEBASH=1 bash '
