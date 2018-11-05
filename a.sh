#!/bin/sh

# git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch Rakefile' HEAD

git filter-branch --env-filter '

OLD_NAME="666"
CORRECT_NAME="dappstore123"
CORRECT_EMAIL=""

if [ "$GIT_AUTHOR_NAME" = "$OLD_NAME" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_NAME" = "$OLD_NAME" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

git push origin --force --all
