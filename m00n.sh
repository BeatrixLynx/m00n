#!/usr/bin/env bash

#  ____             _      
# |  _ \           | |     
# | |_) | ___  __ _| |     
# |  _ < / _ \/ _` | |     
# | |_) |  __/ (_| | |____ 
# |____/ \___|\__,_|______|

url="https://www.moongiant.com/phase/today"
key_word="Phase:"
bracket_start="span>"
bracket_end="<\/span"
phase="$(curl -s $url | grep $key_word | grep -oP "(?<=$bracket_start).*(?=$bracket_end)")"
echo $phase
