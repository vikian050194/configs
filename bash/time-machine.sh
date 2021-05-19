#!/bin/env bash

set -o nounset -o errexit
cd $(dirname "$0")
date=$(date --iso-8601=seconds)
test -L latest || ln -s "$date" latest
rsync --delete-excluded --prune-empty-dirs --archive -F --link-dest=../latest "$@" "./$date"
rm latest
ln -s "$date" latest
