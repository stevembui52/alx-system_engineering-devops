#!/usr/bin/env bash
#displays best school 10 times
#if iteration is 9 print hi

num=0
while [ $num -lt 10 ]
do
	if [ $num -eq 9 ]
	then
		echo "Hi"
	fi
	echo "Best School"
	(( num++ ))
done
