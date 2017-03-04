#!/bin/bash

DIR=48px

echo 'var iconImages = {'

for file in `ls -1 $DIR`; do
  TYPE=`echo $file | cut -d '.' -f 1`
  echo -n "\"$TYPE\": \""
  cat "$DIR/$file" | base64 -w 0
  echo "\","
done

echo -n "\"default\": \""
cat "$DIR/dat.png" | base64 -w 0
echo "\""

echo '};'
