alias dcb='docker-compose exec app bash'
alias gg='cd /home/kirillv/git'

DEFAULT=$PS1

#PS1="\u\$ "
PS1='\W$(__git_ps1 "(%s)") > '
#PS1='\e[38;5;226m\W\e[0m$(__git_ps1 "(\e[38;5;198m%s\e[0m)") > '