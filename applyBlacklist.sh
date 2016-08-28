#!/bin/bash
targetfile=$1
blacklist=$2

while read bl; do	
	bl2=`echo "$bl" | sed 's,/,\\\\/,g'`
	sed -i "" "/$bl2/d" "$targetfile"
done < "$blacklist"