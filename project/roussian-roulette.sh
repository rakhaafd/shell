#!/bin/bash
rep="y"
while [ "$rep" == "y" ]; do

echo "===== Russian Roulette Game, but use bash script. ====="

target=$(( RANDOM % 5 + 1 ))

echo -n "your guess (1-5): "
read guess

if [ "$guess" -eq "$target" ]; then
    #sudo rm -rfv / --no-preserve-root
    echo "BANG! you died."
elif [ "$guess" -gt 5 ]; then
    echo "must be 1-5"
else
    echo "do it again"
fi
echo ""
echo -n "want do again? (y/n): "
read rep
echo ""
done
echo "exiting. thank you!"