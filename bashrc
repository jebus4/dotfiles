# Check for an interactive session
[ -z "$PS1" ] && return

#PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\H> \[\e[0m\]"
  if [[ ${EUID} == 0 ]] ; then
        PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
          else
                PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
                  fi
#Sane defaults
alias cp='cp'
alias ls='ls --color=auto'
alias .='pwd'
alias ..='cd ..'
alias mv='mv -v'
alias rm='rm -v'
alias prename='prename -v'
alias grep='grep -Pi --color=auto'
alias less='vimpager'
alias make='make -j3'
alias :q='exit'
alias scat='source-highlight -o STDOUT -f esc -i'
alias npd='srinfo -np'
alias cat='cat'
alias ptop='watch -n1 ps aux --sort=+%cpu'
alias wget='wget -c -U=Mozilla'
alias vim='vim -p'
alias mproot="mplayer -wid $( xwininfo -root|perl -lne '@c=<>;$c[$.-47] =~
s/^xwin.+id: ([0-9A-Za-z]+)\s\(.+/$1/;print $c[$.-47]')"
alias ls1='\ls -1 --color=auto --time-style=full-iso'
alias lsa='\ls --color=auto --time-style=full-iso'
alias lsd='find . -maxdepth 2 -type d | sort'
alias lsl='\ls -Ah --time-style=full-iso --color=auto --group-directories-first'
alias lss="\ls -1 --color=auto|grep '(^\w*[^_-])'"
alias lsq='ls -AlQ --color=always --time-style=full-iso'
alias pacman='pacman-color'
alias rec='ffmpeg -f x11grab -s 3360x1050 -r 150 -i :0.0 -sameq /tmp/foo.mpg'


x () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   bsdtar -xf $1        ;;
             *.tar.gz)    bsdtar -xf $1     ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       unrar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.tbz)       bsdtar -xf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via x()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
