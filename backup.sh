#!/bin/bash

mysql -h mysql.server -u AgentK -p sceptile AgentK$final > /foo/bar/database_backup_$(date +%m-%d-%Y).sql
tar -zvcf backup_$(date +%d-%m-%Y).tar.gz /foo/bar
rm /foo/bar/database_backup_$(date +%m-%d-%Y).sql
