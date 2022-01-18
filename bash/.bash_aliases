alias bsr='. ~/.bashrc && echo "bashrc is reloaded"'
alias bar='. ~/.bash_aliases && echo "bash_aliases is reloaded"'

alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcl='docker-compose logs'

function func_dcb() { docker-compose exec '$1' bash; }
function func_dcs() { docker-compose exec '$1' sh; }

alias dcb=func_dcb
alias dcs=func_dcs

function func_vvc() {
    PY_VERSION_DEFAULT="3.9.5"
    VENV_NAME_DEFAULT="venv"
    PY_VERSION="$1"
    PY_VERSION="${PY_VERSION:-$PY_VERSION_DEFAULT}"
    VENV_NAME="$2"
    VENV_NAME="${VENV_NAME:-$VENV_NAME_DEFAULT}"
    virtualenv --python="/home/kirill/.pyenv/versions/$PY_VERSION/bin/python3" "$VENV_NAME"
}


alias vvc=func_vvc

alias act='source venv/bin/activate'
alias dct='deactivate'

alias scan='/home/$USER/git/configs/git/scan/scan.sh'

alias gg='cd /home/$USER/git'
alias gt='cd /home/$USER/git/templates'

alias opn='xdg-open .'

alias pr='sudo lsof -i -P -n | grep LISTEN'
