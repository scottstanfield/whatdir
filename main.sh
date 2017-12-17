#!/bin/bash

# Use GNU readlink on Mac (via greadlink after: brew install coreutils)

CD=$(dirname $(greadlink -f $0))
cd $CD

main.py "--frombash"
