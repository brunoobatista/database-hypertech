#!/bin/bash
#psql -d HIGHWAYS -a -f CLUSTER_1000M.sql

index = 1

for file in *.sql
    do
        let "index=index+1"
        psql -d hypertech -a -f "$file"
    done

exit 1 ;