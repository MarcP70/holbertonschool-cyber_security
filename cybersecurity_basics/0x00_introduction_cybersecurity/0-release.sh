#!/bin/bash
lsb_release -is | awk '{print $1}'
