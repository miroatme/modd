#!/bin/bash
view_pipe="pv -p -t -e -s "
if [ -z $3 ] ; then
    speed="1M"
else
    speed="$3"
fi
dd if=$1 bs=$speed |\
$view_pipe `ls -la $1 |awk '{print $5}'` |\
dd of=$2
