#!/bin/bash
#psql -d HIGHWAYS -a -f CLUSTER_1000M.sql

CONFIG=$(</var/lib/migration/config.txt)
#sed -i -e "s/$CONFIG/teste/g" /var/lib/migration/config.txt

for file in *.sql
    do
        filename=$(basename  -- "$file" | cut -c2-4)
        #echo $filename + $CONFIG
        if [ $(( 10#$filename )) -gt $(( 10#$CONFIG )) ]; then
            psql -d hypertech -a -f "$file"
            $retorno
            sed -i -e "s/$CONFIG/$filename/g" /var/lib/migration/config.txt
        else
            echo "nao"
        fi
        
        #psql -d hypertech -a -f "$file"
    done

exit 1 ;