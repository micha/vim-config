#!/bin/sh
 
git filter-branch -f --env-filter '
 
an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"
 
if [ "$GIT_COMMITTER_EMAIL" = "micha@9708d6e4-2587-447f-a9e4-23e61c6ca176" ]
then
cn="Micha Niskin"
cm="asdf@ubergibson.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "micha@9708d6e4-2587-447f-a9e4-23e61c6ca176" ]
then
an="Micha Niskin"
am="asdf@ubergibson.com."
fi
 
export GIT_AUTHOR_NAME=$an
export GIT_AUTHOR_EMAIL=$am
export GIT_COMMITTER_NAME=$cn
export GIT_COMMITTER_EMAIL=$cm
'