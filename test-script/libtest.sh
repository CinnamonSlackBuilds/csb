#!/bin/bash
# Simple script to check broken or missing libraries
# Willy Sudiarto Raharjo 2014

for L in `ls /usr/bin`; do
  if [ -f /usr/bin/$L ]; then
    ldd /usr/bin/$L | grep -i "not found"
    if [ $? -eq 0 ]; then
      echo $L;
    fi
  fi
done
