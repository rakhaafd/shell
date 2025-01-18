#!/bin/bash
c=1
d=0
echo "c = $c true"
echo "d = $d false"

# && (AND): both must true
echo "c && d: $((c && d))" #0

# || (OR): one of them must be true to return true
echo "c || d: $((c || d))" #1

#! (NOT): negation
echo "!c: $((!c))" #0