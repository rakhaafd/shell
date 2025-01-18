#!/bin/bash
name="raku"
echo 'my name is $name' #use ('') single quote, cant expanse variable
echo "my name is $name" #use ("") use double quote can.

echo "using backticks"
date_now=`date`
echo "date now is $date_now"

echo "escape string/char"
echo "i have a quotes \"PHP (programmer harus python)\""
echo "\n this is newline"
echo '\t this is tabulation'