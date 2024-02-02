#!/bin/bash
curl -X POST "$2" -d "$3" -w "\n%{redirect_url}\n" | sed 's|http://.*/login|http://'"$1"'/login|'
