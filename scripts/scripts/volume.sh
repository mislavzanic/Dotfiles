#!/bin/sh
pamixer --get-volume | awk '{
    if ($1 < 25) 
        print " : "$1; 
    else if ($1 < 70) 
        print " : "$1;
    else
        print " : "$1;
}'
