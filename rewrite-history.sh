#!/bin/bash

# This script will be used to rewrite the history
# It removes commits from i-am-issaayman

git filter-branch --force --env-filter '
if [ "$GIT_COMMITTER_NAME" = "i-am-issaayman" ] || [ "$GIT_AUTHOR_NAME" = "i-am-issaayman" ]
then
    skip_commit "$@"
fi
' -- --all
