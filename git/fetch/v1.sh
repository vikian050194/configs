#!/bin/env sh

dir="$1"

if [ -z "$dir" ]
then
    dir="`pwd`"
fi

case $dir in
  (*/) dir="$dir*";;
  (*) dir="$dir/*";;
esac

C_RED="\033[1;31m"
C_GREEN="\033[1;32m"

for f in $dir
do
	[ -d "${f}" ] || continue

	if [ -d "$f/.git" ]
	then
		status=""
		color=""
		cd $f

		if [ -n "$(git fetch --dry-run 2>&1)" ]
		then
			status="fetch"
			color=$C_RED
		else
			status="ok"
			color=$C_GREEN
		fi

		echo "${f#$dir} ${color}${status}$(tput sgr0)"

		cd ../
	fi
	
done