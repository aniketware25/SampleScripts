#!/bin/bash
#addition of numbers given in arguments 
sum=$1+$2
echo "sum is : $(($sum))"
echo "number of Arguments:  $#"
echo "Display all argumet with * : $*"
echo "Display arguments with @ : $@"
