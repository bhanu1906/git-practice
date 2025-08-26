#!/bin/bash

NUMBER=$1

if [ $NUMBER -GT ] #gt,  lt, eq, -ne
then
     echo "given number: $NUMBER is greater than 20"
else
     echo "given number: $NUMBER is less than 20"
fi
