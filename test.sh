# #!/bin/env bash

# echo "Print message? (y/n)"
# read -s answer
# if [ "$answer" == "y" ]; then
# echo "message"
# fi

#===============================

# #!/bin/env bash

# install () {
#     echo "install $1? (y/n) "
#     read answer #-s

#     if [ "$answer" == "y" ]; then
#         eval "$2"
#     fi
# }

# install "test" "echo 213"

#===============================

#!/bin/env sh

dir="$1"

echo $dir

case $dir in
  (*z) echo TRUE;;
  (*) echo FALSE;;
esac

# #!/bin/env bash

# dir="$1"

# echo $dir

# if [[ $dir == *z ]];
# then
# 	echo TRUE;
# else
# 	echo FALSE;
# fi