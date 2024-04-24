#!/bin/bash
sudo nmap -sF -f -p80-85 --timing 2 $1
