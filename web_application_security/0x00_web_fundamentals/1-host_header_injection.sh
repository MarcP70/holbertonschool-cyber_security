#!/bin/bash
curl -X POST "$2" -H "Content-Type: application/x-www-form-urlencoded" -d "$3" | sed 's|http://.*/login|http://'"$1"'/login|'
