#!/bin/bash

MON_DIR=/home/test1
inotifywait -mqr --format %f -e create $MON_DIR |\
while read files; do
   rsync -avz /home/test1 /home/test2
   #echo "$(date +'%F %T') create $files" | mail -s "dir monitor" xxx@163.com
done
