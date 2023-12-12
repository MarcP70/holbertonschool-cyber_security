#!/bin/bash
subfinder -d "$1" -silent | tee >(awk '{print $1}' > "$1.txt")
