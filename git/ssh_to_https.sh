#/bin/bash

# source https://gist.github.com/chuckbjones/9dc6634fe52e56ba45ac

REMOTE=${1-origin}

REPO_URL=`git remote -v | grep -m1 "^$REMOTE" | sed -Ene's#.*(git@github.com:[^[:space:]]*).*#\1#p'`
if [ -z "$REPO_URL" ]; then
  echo "-- ERROR:  Could not identify Repo url."
  echo "   It is possible this repo is already using HTTPS instead of SSH."
  exit
fi

USER=`echo $REPO_URL | sed -Ene's#git@github.com:([^/]*)/(.*).git#\1#p'`
if [ -z "$USER" ]; then
  echo "-- ERROR:  Could not identify User."
  exit
fi

REPO=`echo $REPO_URL | sed -Ene's#git@github.com:([^/]*)/(.*).git#\2#p'`
if [ -z "$REPO" ]; then
  echo "-- ERROR:  Could not identify Repo."
  exit
fi

NEW_URL="https://github.com/$USER/$REPO.git"
echo "Changing repo url from "
echo "  '$REPO_URL'"
echo "      to "
echo "  '$NEW_URL'"
echo ""

CHANGE_CMD="git remote set-url $REMOTE $NEW_URL"
echo "$CHANGE_CMD"
`$CHANGE_CMD`

echo "Success"
