#!/bin/sh
PATH=$PATH:/service/app/git/bin
echo "Updating git repos and fetching changesets into redmine" 
cd /mnt/redmine/redmine-dt/repos/mobile.git 
git fetch --all --prune
cd /mnt/redmine/redmine-dt/repos/combus.git 
git fetch --all --prune
cd /mnt/redmine/redmine-dt/repos/managiant.git 
git fetch --all --prune
cd /mnt/redmine/redmine-dt/repos/projects.git 
git fetch --all --prune
cd /mnt/redmine/redmine-dt/repos/vcrunch.git 
git fetch --all --prune
curl -k "https://redmine.trialpay.com/sys/fetch_changesets?key=nCPiQxPypDcGb2wTn9nZ" 


