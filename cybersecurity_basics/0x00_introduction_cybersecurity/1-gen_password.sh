#!/bin/bash
tr -dc '[:graph:]' < /dev/urandom | head -c "$1"
