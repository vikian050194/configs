# echo "Print message? (y/n)"
# read -s answer
# if [ "$answer" == "y" ]; then
# echo "message"
# fi

install () {
    echo "install $1? (y/n) "
    read answer #-s

    if [ "$answer" == "y" ]; then
        eval "$2"
    fi
}

install "test" "echo 213"