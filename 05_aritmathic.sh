#!/bin/bash
echo -n "your first number: "
read first_number

echo -n "your sec number: "
read sec_number

echo "(+) is: $((first_number + sec_number))"
echo "(-) is: $((first_number - sec_number))"
echo "(*) is: $((first_number * sec_number))"
echo "(/) is: $((first_number / sec_number))"
echo "(%) is: $((first_number % sec_number))"

echo "$((first_number + sec_number - first_number * sec_number))"