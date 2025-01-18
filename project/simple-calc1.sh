#!/bin/bash
rep="y"
while [ "$rep" == "y" ]; do

echo "===== Simple Calc - Part 1 ====="

echo -n "num 1: "
read num1

echo -n "num 2: "
read num2

echo -n "operator (+, -, *, /): "
read op

if [ "$op" == "+" ]; then
    echo "$((num1 + num2))"
elif [ "$op" == "-" ]; then
    echo "$((num1 - num2))"
elif [ "$op" == "*" ]; then
    echo "$((num1 * num2))"
elif [ "$op" == "/" ]; then
    echo "$((num1 / num2))"
else
    echo "not in operator option"
fi
echo ""
echo -n "want do again? (y/n): "
read rep
echo ""
done
echo "exiting. thank you!"