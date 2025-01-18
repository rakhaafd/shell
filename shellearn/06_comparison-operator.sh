#!/bin/bash
a=10
b=5

#>
echo "is a bigger than b: $((a > b))" #1 = true
# ==
echo "is a equal b: $((a == b))" #0 = false
#<
echo "is a smaller b: $((a < b))" #0 = false
#!=
echo "is a not b: $((a != b))" #1 = true