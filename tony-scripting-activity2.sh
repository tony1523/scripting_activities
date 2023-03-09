#! /bin/sh


dateVar=$(date +'%Y+%m+%d')
for item in *
do 
if [-f $item]; then
newfilename=$item.*
mv $item $newfilename.$datevar
fi
done
