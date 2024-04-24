#!/bin/bash
sudo nmap -sF -p80-85 --timing 2 $1
