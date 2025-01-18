#!/bin/bash
echo "show date and time"
date=$(date)
echo "now is $date"

echo "show me"
me="rakuu"
echo "my name is $me"

echo "substitusion with default value"
unset my_name
echo "my name is : ${my_name:-'your name is unknown'}"

echo "substitusion with replace value"
echo "my real name is ${my_name:='lavieenrakuu'}"
echo "$my_name"