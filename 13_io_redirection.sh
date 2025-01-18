#!/bin/bash
output="output.txt"
echo "to output file name $output"

# echo "park gyu young is my crush, my wife, my type of woman" > $output
# echo "file saved in $output"

# echo "add new text in $output"
# echo "dear gyu, my beloved one. can we dinner together today?" >> $output #use to add addition text

echo "throw error (2>)"
cat message.txt 2> error.log
cat error.log #make error.log file that contain: cat: message.txt: No such file or directory

echo "combine output and error to file (>&)"
ls project test > all_output.log 2>&1
cat all_output.log