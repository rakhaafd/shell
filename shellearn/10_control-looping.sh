#!/bin/bash
echo "break in 7"
for i in {1..10}; do
    if [ "$i" -eq 7 ]; then
        echo "you've in $i"
        break
        fi
    echo "$i"
done

echo "skip 3"
for x in {1..10}; do
    if [ "$x" -eq 3 ]; then
    continue
    fi
echo "num $x"
done

echo "exit while program reach 8"
for z in {1..20}; do
    if [ "$z" -eq 8 ]; then
    neofetch
    exit 0
    fi
echo "$z"
done
echo "this can't read because the program is exiting in 8"