#! /bin/sh


dateVar=$(date +'%Y-%m-%d')
seq 1 50 | shuf -n 5 > $dateVar.txt
echo $(( $RANDOM % 10 + 1 )) >> $dateVar.txt

