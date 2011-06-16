#!/bin/sh
 
git filter-branch -f --env-filter '
 
an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"
 
if [ "$GIT_COMMITTER_EMAIL" = "micha@thinkminimo.(none)" ]
then
cn="Micha Niskin"
cm="asdf@ubergibson.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "micha@thinkminimo.(none)" ]
then
an="Micha Niskin"
am="asdf@ubergibson.com"
fi
 
export GIT_AUTHOR_NAME=$an
export GIT_AUTHOR_EMAIL=$am
export GIT_COMMITTER_NAME=$cn
export GIT_COMMITTER_EMAIL=$cm
'
