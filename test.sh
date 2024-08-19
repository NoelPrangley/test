#!/bin/sh
echo 'i=1; for a in $@; do echo "$i = $a"; i=$((i+1)); done' 
echo "Argument 1: $1"
echo "Argument 2: $2"
