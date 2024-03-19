#!/bin/bash
ps aux | grep root | awk '$6 > 0' | awk '$5 > 0'
