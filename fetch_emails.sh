#!/bin/sh
PATH=$PATH:/usr/local/bin
echo "fetching income emails for redmine"
bundle exec rake -f /mnt/redmine/redmine_v3/Rakefile redmine:email:receive_imap unknown_user=accept no_permission_check=1 RAILS_ENV="production" host=imap.gmail.com port=993 ssl=1 username=redmine@trialpay.com password=worldcup1122 --trace 2>&1 | tee -a /var/log/redmine

