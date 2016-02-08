#!/bin/bash
stime=$(echo $1+$2*.1 | bc )
sleep $stime