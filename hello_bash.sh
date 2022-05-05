#! /bin/bash

echo "Enter 1 or 2 :"

read number

if [ $number != 1 -o  $number != 2 ]; then 
 echo "Invalid Input:"; exit 1;
 
elif [ $number==1 ]; then
 $VARIABLE = "Yes";

else
 $VARIABLE = "No";

fi

echo $VARIABLE;
