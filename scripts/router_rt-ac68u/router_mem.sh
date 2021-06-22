#!/bin/sh

dir=`dirname $0`

name="router_mem"
fields=`top -bn1 | head -1 | awk '/Mem/ {print "used_kb="$2",free_kb="$4",shared_kb="$6",buffers_kb="$8",cached_kb="$10}' | sed 's/K//g'`
$dir/todb.sh "$name $fields"

