#!/bin/bash

function wasUpdated {
    cd $1  
    pull=`git pull`  
    if [ "$pull" == "Already up-to-date." ]
    then
	echo "up-to-date" 
	return
    fi
    echo "updated"
}

needsRestart=0

FILES="/mnt/redmine/redmine-dt /mnt/redmine/redmine-dt/plugins/redmine_once_assigned_ever_watcher /mnt/redmine/redmine-dt/plugins/redmine_rouge "
for f in $FILES
do
    test -d "$f" || continue 
    updated=$(wasUpdated "$f")
    echo "Checking $f file: $updated"
    if [ "$updated" == "updated" ] 
    then
	needsRestart=1
    fi
done

if [ $needsRestart -eq 1 ] 
then 
    echo "restarting redmine..."
    /etc/init.d/redmine restart
fi

