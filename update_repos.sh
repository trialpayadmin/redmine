#!/bin/bash
PATH=$PATH:/service/app/git/bin
echo "Updating git repos and fetching changesets into redmine" 
base=/mnt/redmine/redmine-dt/repos
for repo in $(ls -d $base/*.git) 
do
  echo Updating $repo
  cd $repo && pwd && git fetch --all --prune
done
cd $base
curl -k "https://redmine.trialpay.com/sys/fetch_changesets?key=nCPiQxPypDcGb2wTn9nZ" 


