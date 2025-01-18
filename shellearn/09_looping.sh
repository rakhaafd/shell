#!/bin/bash

#for
echo "print value from 1 to 10"
for i in {1..10}; do
    echo "num $i + 1 = $((i + 1))"
done

#while
echo "print 1 - 10 use while"
point=1
while [ $point -le 10 ]; do
    echo "point is $point"
    ((point++))
done

#until
echo "print 1 - 10 use until"
score=1
until [ $score -gt 10 ]; do
    echo "nilai: $score"
    ((score++))
done


#Pada while, perulangan berhenti ketika kondisi menjadi salah.
#Pada until, perulangan berhenti ketika kondisi menjadi benar.