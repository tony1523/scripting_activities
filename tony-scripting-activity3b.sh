#! /bin/sh

filename=$(date +'%Y-%m-%d').txt

numBonus=$(sed -n '6p' $filename)

echo "Please enter numbers between 1-50"

matchCountNormal=0
matchCountBonus=0

#first 5 numbers
for i in {1..5}
do
read num
if [[ `grep -x $num $filename` ]]
then
((matchCountNormal++))
fi
done

#bonus number
echo "Please enter a number between 1-10"
read num
if [[ $num -eq $numBonus ]]
then
((matchCountBonus++))
fi

#final verdict
echo "Number of matches for first 5 numbers: $matchCountNormal"
if [[ $matchCountBonus -eq 1 ]]
then
echo "Your bonus number is correct "
else
echo "Your binus number is false "
fi

if (($matchCountNormal+$matchCountBonus == 6)) 
then
echo "You won"
else
echo "You lost"
fi

