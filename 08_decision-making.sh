#!/bin/bash
echo -n "input num: "
read num

if [ "$num" -gt 10 ]; then #can use -gt is greater than
    echo "your num $num > 10"
elif [ "$num" -lt 2 ]; then #can use -lt is less than
    echo "your num $num < 2"
else
    echo "your num is not possible"
fi


#case

echo "Your Hobby"
echo "1. Playing Basketball"
echo "2. Playing Games"
echo "3. Coding"
echo -n "Your Choice? [1 - 3] "
read choice

case $choice in
    1)
    echo "cringe blud"
    ;;
    2)
    echo "good"
    ;;
    3)
    echo "you are goat"
    ;;
    *) #else
    echo "not in option"
    ;;
esac