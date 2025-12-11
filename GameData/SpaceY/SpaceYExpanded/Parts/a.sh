#!/bin/bash
#

c=`pwd`
for i in *; do
	cd $c/$i
	
	t=`grep tags * -r --include=\*cfg | wc -l`
	f=`find . -name \*cfg -print | wc -l`
	[ $t != $f ] && pwd
	echo " "
done

