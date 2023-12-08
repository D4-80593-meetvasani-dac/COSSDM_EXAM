#!/bin/zsh

echo "Enter the number of rows: "
read rows

for ((i=rows; i>=1; i--))
do
  for ((j=rows-i; j>0; j--))
  do
    echo -n " "
  done
  
  for ((k=1; k<=i; k++))
  do
    echo -n "$((rows-k+1)) "
  done

  # Move to the next line
  echo ""
done
~       
