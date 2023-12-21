#!/bin/bash
openssl rand -base64 32 | tr -dc '[:alnum:]' | head -c "$1"
