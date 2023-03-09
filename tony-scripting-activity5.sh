#! /bin/sh

read -p "enter a number: " number

if echo "$number" | grep -q "^[0-9]\+$"; then
echo $number | rev
else echo "not a number"
fi


