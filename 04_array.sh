#!/bin/bash
merk=("nissan" "ferrari" "porsche")
echo "list in array merk is: "
echo "${merk[@]}"
#[@] is used to show all list in array merk

echo "first list is: "
echo "${merk[0]}"

echo "element in array merk is: "
echo "${#merk[@]}" #3

#add subaru to array
merk+=("subaru")
echo "${merk[@]}"
echo "${#merk[@]}" #4

#remove element in array
unset merk[1] #remove ferrari (index 1)
echo "${merk[@]}"

merk[0]="lamborghini" #add lamborghini (index 0)
echo "${merk[@]}"