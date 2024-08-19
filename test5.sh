#!/bin/sh
echo 'i="hello"; for a in $@; $i=$a; done'
echo "$i"
