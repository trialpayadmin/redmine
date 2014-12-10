#!/bin/sh
PATH=$PATH:/service/app/git/bin
echo "Updating git repos and fetching changesets into redmine" 
cd /mnt/redmine/redmine-dt/repos/mobile.git 
git fetch --all 
cd /mnt/redmine/redmine-dt/repos/combus.git 
git fetch --all
curl -k "http://ace.trialpay.com:3000/sys/fetch_changesets?key=nCPiQxPypDcGb2wTn9nZ" 


