#!/bin/bash
#psql -d HIGHWAYS -a -f CLUSTER_1000M.sql

CONFIG=$(</var/lib/migration/config.txt)
sed -i 's/original/111/g' /var/lib/migration/config.txt

for file in *.sql
    do
        #cut -c 2-4 $("echo $file")
 
        echo "$file"
        #psql -d hypertech -a -f "$file"
    done

exit 1 ;