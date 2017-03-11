#!/bin/bash
for i in *.jpg; do
 echo $i
 jpegtran -copy none -optimize -outfile temp_optimize.jpg $i
 jpegtran -copy none -progressive -outfile $i temp_optimize.jpg
 rm temp_optimize.jpg
done
