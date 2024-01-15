#!/bin/bash
find "$1" -perm /6000 -atime 1 -type f -ls 2>/dev/null
