#!/bin/bash
john --format=Raw-SHA256 --wordlist=rockyou.txt $1
