alias dcb='docker-compose exec app bash'
alias dcu='docker-compose up -d'

alias gg="cd /home/$USER/git"
alias gt="cd /home/$USER/git/templates"

alias pr="sudo lsof -i -P -n | grep LISTEN"

DEFAULT=$PS1

#PS1="\u\$ "
PS1='\W$(__git_ps1 "(%s)") > '
#PS1='\e[38;5;226m\W\e[0m$(__git_ps1 "(\e[38;5;198m%s\e[0m)") > '