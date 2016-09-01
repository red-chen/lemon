#!/bin/sh

file_list=`find bin -name "*_unittest"`

flag=0

for file_path in $file_list
do 
    $file_path
    [ $? != 0 ] && flag=1
done

[ $flag != 0 ] && echo "test fail."

exit $flag
