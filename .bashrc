# SOURCE OTHER FILES HERE
source .bash_aliases
source .git-completion.bash

# bash history commands
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# DEFINE FUNCTIONS HERE
function grep_rpm{
  rpm -qa | grep $1
}

function swapused  { 
  echo $(( $(meminfo swaptotal) - $(meminfo swapfree) ))
}

function meminfo {
  field=$1
  if [[ -n $field ]]; then 
    cat /proc/meminfo | grep -i $field | awk '{print $2}'
  else
    cat /proc/meminfo
  fi
}


