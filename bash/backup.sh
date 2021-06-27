#!/bin/env sh

# sudo mkdir /media/data
# sudo mount /dev/sdb2 /media/data

SOURCE_DIR="/home/$USER/git"
echo "from\t$SOURCE_DIR"

TARGET_DIT=$1
echo "to\t$TARGET_DIT"

EXCLUDE_FROM="$SOURCE_DIR/.rsync-exclude"

DRY_RUN="--dry-run"

if [ "$2" = "-f" ]; then
    DRY_RUN="" 
fi

# echo "$DRY_RUN"

rsync --archive --whole-file --progress --verbose --verbose --cvs-exclude --exclude-from $EXCLUDE_FROM --delete --delete-excluded $SOURCE_DIR $TARGET_DIT $DRY_RUN

# sudo umount /media/data
# sudo rm -rf /media/data
