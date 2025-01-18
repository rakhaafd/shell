#!/bin/bash

echo "this name of script is: $0"
#this name of script is ./03_special_var.sh

echo "argument len is: $#"
#./03_special_var.sh lavieenbluu cewe aku
#argument given is 3

echo "all argument given is: $*"
#./03_special_var.sh gyu young cantik    
#all argument given is gyu young cantik

echo "argument 2 is: $2" #can #1 #2 #3 #n
#./03_special_var.sh gyu young cantik
#argument 2 is young

echo "status program is: $?"
# status program is 0 (0 is defined the program success with zero problem)

echo "proses id is: $$"
#proses id is 15278

echo "my name is: $USER"
#root

echo "your path now is in: $PWD"
#your path now is in /home/raku/belajar-shell-script/shell

echo "shell that u use is: $SHELL"