alias ls="ls ${LS_COLOR_FLAG:---color=auto} -h"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"
alias df="df -h"
alias du="du -h"
alias grep="grep --color=auto"
alias -- -="cd -"
if have_exe vim ; then
  alias vi=vim
  export EDITOR=vim
  alias vig="vim .git/index"
fi
have_exe gnome-open && alias open='gnome-open > /dev/null 2>&1'
have_exe ack-grep && alias ack='ack-grep'
have_exe tree && alias tree="tree -CDt"

alias gc="git checkout"
alias gcb="git checkout -b"
alias gst="git status"
alias glog="git log"
if [ "$(type -t __git_complete)" == "function" ] ; then
  __git_complete gc _git_checkout
  __git_complete glog _git_log
fi

alias b="bundle exec"

have_exe autossh && alias ssh="autossh -M 0"

if have_exe csvlook ; then
  SSV_OPTS="-d ';' -e Latin-1"
  alias ssvlook="csvlook $SSV_OPTS"
  alias ssvclean="csvclean $SSV_OPTS"
  alias ssvcut="csvcut $SSV_OPTS"
  alias ssvgrep="csvgrep $SSV_OPTS"
  alias ssvjoin="csvjoin $SSV_OPTS"
  alias ssvsort="csvsort $SSV_OPTS"
  alias ssvstack="csvstack $SSV_OPTS"
  alias ssvformat="csvformat $SSV_OPTS"
  alias ssvjson="csvjson $SSV_OPTS"
  alias ssvsql="csvsql $SSV_OPTS"
  alias ssvstat="csvstat $SSV_OPTS"
fi
