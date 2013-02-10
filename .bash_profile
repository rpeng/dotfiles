__git_ps1 () 
{ 
      local b="$(git symbolic-ref HEAD 2>/dev/null)";
      if [ -n "$b" ]; then
          printf " (%s)" "${b##refs/heads/}";
      fi
}

PS1='\[\e[0;35m\]\u@:\[\e[1;36m\]\w\[\e[m\]$(__git_ps1 " (\[\e[1;33m\]%s\[\e[m\])")\$ '

# use MacVim instead of default
alias vi='mvim -v'
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -al'
alias ..='cd ..'

function ql(){ qlmanage -p "$@" >/dev/null 2>&1 ;}

export PATH=$PATH:~/bin

# allow CTRL-S to work for command-t
stty -ixon
