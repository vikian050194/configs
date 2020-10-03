#!/bin/env sh

rsync --archive --whole-file --verbose --verbose --cvs-exclude --filter='. .rsync-filter' --delete --delete-excluded /home/kirill/git /media/data --dry-run