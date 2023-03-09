# /bin/sh

read -p "Enter your password: " password
check=1

if [ ${#password} -lt 8 ]; then
echo "Length should be 8 or more characters"
check=0
fi

if ! echo "$password" | grep -q "[0-9]"  || ! echo "$password" | grep -q "[a-zA-Z]" ; then
echo "The password should contain numbers and letters"
check=0
fi

if ! echo "$password" | grep -q "[a-z]"  || ! echo "$password" | grep -q "[A-Z]" ; then
echo "There should be both uppercase and lowercase letters"
check=0
fi

if [ $check -eq 1 ]; then

echo "Good Password"
fi
