DEFAULT=$PS1

#PS1="\u\$ "
PS1='\W$(__git_ps1 "(%s)") > '
#PS1='\e[38;5;226m\W\e[0m$(__git_ps1 "(\e[38;5;198m%s\e[0m)") > '

PROMPT_COMMAND='echo -en "\033]0; ${PWD##*/} \a"'
