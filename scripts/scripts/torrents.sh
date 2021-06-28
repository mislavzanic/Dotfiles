#!/bin/sh

transmission-remote -l | grep -v 'ID' | grep -v 'Sum' | awk '{if ($2 == "100%")
done++; else dwd++;} END {if (done == 0) done = "0"; if (dwd == 0) dwd = "0"; print "^c#4FF774^ : "done" |^c#F74F7F^  : "dwd}'

