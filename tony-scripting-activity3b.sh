#!/bin/bash

filename=$(date +'%Y-%m-%d').txt
numBonus=$(sed -n '6p' $filename)

echo "Please enter numbers between 1-50"

matchCountNormal=0
matchCountBonus=0

#first 5 numbers
for i in {1..5}
do
  validInput=0
  while [ $validInput -eq 0 ]
  do
    read num
    if [[ "$num" =~ ^[0-9]+$ && $num -ge 1 && $num -le 50 ]]
    then
      validInput=1
      if [[ `grep -x $num $filename` ]]
      then
	echo "You guessed a correct number!"
        ((matchCountNormal++))
      fi
    else
      echo "Invalid input. Please enter a number between 1-50"
    fi
  done
done

#bonus number
echo "Please enter a number between 1-10"
validInput=0
while [ $validInput -eq 0 ]
do
  read num
  if [[ "$num" =~ ^[0-9]+$ && $num -ge 1 && $num -le 10 ]]
  then
    validInput=1
    if [[ $num -eq $numBonus ]]
    then
      ((matchCountBonus++))
    fi
  else
    echo "Invalid input. Please enter a number between 1-10"
  fi
done

#final verdict
echo "Number of matches for first 5 numbers: $matchCountNormal"
if [[ $matchCountBonus -eq 1 ]]
then
  echo "Your bonus number is correct "
else
  echo "Your bonus number is false "
fi

if (($matchCountNormal+$matchCountBonus == 6))
then
  echo "You won"
else
  echo "You lost"
fi

