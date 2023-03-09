#! /bin/sh


dateVar=$(date +'%Y-%m-%d')
Number1=$(( $RANDOM % 50 + 1 ))
Number2=$(( $RANDOM % 50 + 1 ))
Number3=$(( $RANDOM % 50 + 1 ))
Number4=$(( $RANDOM % 50 + 1 ))
Number5=$(( $RANDOM % 50 + 1 ))

while [ "$Number1" -eq "$Number2" ]; do
  Number2=$(( $RANDOM % 50 + 1 ))
done

while [ "$Number3" -eq "$Number1" ] || [ "$Number3" -eq "$Number2" ]; do
  Number3=$(( $RANDOM % 50 + 1 ))
done 

while [ "$Number4" -eq "$Number1" ] || [ "$Number4" -eq "$Number2" ] || [ "$Number4" -eq "$Number3" ]; do
  Number4=$(( $RANDOM % 50 + 1 ))
done

while [ "$Number5" -eq "$Number1" ] || [ "$Number5" -eq "$Number2" ] || [ "$Number5" -eq "$Number3" ] || [ "$Number5" -eq "$Number4" ]; do
  Number5=$(( $RANDOM % 50 + 1 ))
done

Bonus=$(( $RANDOM % 10 + 1 ))

echo "$Number1" >> $dateVar.txt
echo "$Number2" >> $dateVar.txt
echo "$Number3" >> $dateVar.txt
echo "$Number4" >> $dateVar.txt
echo "$Number5" >> $dateVar.txt
echo "$Bonus" >> $dateVar.txt

