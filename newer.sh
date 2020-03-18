#!/bin/bash
unset -v latest
for file in "$dir"~/A1T1*; do
  [[ $file -nt $latest ]] && latest=$file
done
echo $latest