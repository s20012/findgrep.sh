#!/bin/bash

pattern=$1
directory=$2
if [ -z "$directory" ]; then
	directory='.'
fi
find "$directry" -type f -print0 | xargs grep -nH "$pattern"

