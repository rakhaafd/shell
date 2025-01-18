#!/bin/bash
rep="y"
while [ "$rep" == "y" ]; do

echo "===== Simple Calc - Part 2 (use function) ====="

echo -n "num 1: "
read num1

echo -n "num 2: "
read num2

echo -n "operator (+, -, *, /): "
read op

function add(){
    local result=$(( $1 + $2 ))
    echo $result
}

function subs(){
    local result=$(( $1 - $2 ))
    echo $result
}

function mult(){
    local result=$(( $1 * $2 ))
    echo $result
}

function div(){
    local result=$(( $1 - $2 ))
    echo $result
}

if [ "$op" == "+" ]; then
    res_add=$(add $num1 $num2)
    echo "$res_add"
elif [ "$op" == "-" ]; then
    res_subs=$(subs $num1 $num2)
    echo "$res_subs"
elif [ "$op" == "*" ]; then
    res_mult=$(mult $num1 $num2)
    echo "$res_mult"
elif [ "$op" == "/" ]; then
    res_div=$(div $num1 $num2)
    echo "$res_div"
else
    echo "not in operator option"
fi
echo ""
echo -n "want do again? (y/n): "
read rep
echo ""
done
echo "exiting. thank you!"