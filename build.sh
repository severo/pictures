#!/bin/bash

sizes=(320 640 768 1024 1366 1600 1920)
for i in "${sizes[@]}"; do
  directory="images,w_${i}"
  mkdir -p $directory
  for f in images/*; do
    filename=$(basename $f)
    echo "Generate $directory/$filename"
    convert -resize ${i}x $f $directory/$filename
  done
done
