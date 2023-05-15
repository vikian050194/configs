#!/bin/env bash

sudo mkdir /media/data
sudo mount /dev/sdb1 /media/data

SOURCE_DIR="/home/$USER/git"

TARGET_DIT="/media/data"

EXCLUDE_FROM="$SOURCE_DIR/.rsync-exclude"

DRY_RUN="--dry-run"

if [ "$1" = "-f" ]; then
    DRY_RUN="" 
fi

rsync --archive --whole-file --progress --verbose --verbose --cvs-exclude --exclude-from $EXCLUDE_FROM --delete --delete-excluded $SOURCE_DIR $TARGET_DIT $DRY_RUN

sudo umount /media/data
sudo rm -rf /media/data
