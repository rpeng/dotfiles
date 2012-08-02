__git_ps1 () 
{ 
      local b="$(git symbolic-ref HEAD 2>/dev/null)";
          if [ -n "$b" ]; then
                    printf " (%s)" "${b##refs/heads/}";
              fi
}

PS1='\[\e[0;35m\]\u@:\[\e[1;36m\]\w\[\e[m\]$(__git_ps1 " (\[\e[1;33m\]%s\[\e[m\])")\$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export PATH=/Users/richard.peng/workspace/binaries/mongodb-osx-x86_64-2.0.2/bin:$PATH
export NOSE_REDNOSE=1
export PYTHONDONTWRITEBYTECODE=1

# this is a dev machine
export HULU_ENV='dev'

# use MacVim instead of default
alias vi='mvim -v'
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -al'
alias ..='cd ..'

function ql(){ qlmanage -p "$@" >/dev/null 2>&1 ;}

# allow CTRL-S to work for command-t
stty -ixon

# use vi to edit shell cmds
set -o vi

# fiz :)
function f {
    ~/workspace/fiz/fiz
    CURRENT_FIZDIR=`pwd`
    if [ -f ./.fizpath ]
    then
        . .fizpath
        rm $CURRENT_FIZDIR/.fizpath
    fi
}
