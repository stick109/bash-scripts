#!/bin/bash
declare -i x=0
declare -i folder=0
for file in *
do
  [ -d "$file" ] && continue
  if [ $(( x % 25 )) -eq 0 ] 
  then
    x=0
    folder=$(( folder + 1 ))
    mkdir $folder
  fi
  echo x = $x, folder = $folder, file = $file
  cp $file $folder
  x=$(( x + 1 ))
done
