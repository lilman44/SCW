#!/bin/bash #path to bash shell that will execute this file
# notice the path to the data file
cut -f1,3,4 Data/ByCountry/Mexico.txt|sort -nk3|tail -n1 > HighestLE_Mexico.txt
cat HighestLE_Mexico.txt

