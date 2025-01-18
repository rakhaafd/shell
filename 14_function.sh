#!/bin/bash

function greet(){
    echo "nice to meet u"
}
greet

echo "==== use param ===="

function hi (){
    echo "hi, $1 $2"
}
hi "rakuu" "gyu"

echo "==== 10 + 11 ===="

function add() {
    local res=$(( $1 + $2 ))
    echo $res
}
res=$(add 10 11)
echo "$res"

echo "==== function show date ===="

function show_date() {
    local date_now=`date`
    echo $date_now
}
show_date