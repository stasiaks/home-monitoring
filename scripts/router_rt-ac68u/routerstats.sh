#!/bin/sh

dir=`dirname $0`

nice -n -19 $dir/router_cpu.sh
sleep 1
nice -n -19 $dir/router_mem.sh

