#!/bin/bash
john --wordlist=rockyou.txt --format=raw-sha256 $1
