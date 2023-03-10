#! /bin/sh

numArray=()
count=0

# function for calculations
function array_stats {
    local sum=0
    local prod=1
    local min=${1}
    local max=${1}
    for num in "${@}"; do
        # calculate sum
        sum=$((sum + num))
        # calculate product
        prod=$((prod * num))
        # find min and max
        if (( num < min )); then
            min=$num
        fi
        if (( num > max )); then
            max=$num
        fi
    done
    # calculate average
    local avg=$(bc -l <<< "${sum}/${#}")
    # output results
    echo "Sum: ${sum}"
    echo "Product: ${prod}"
    echo "Average: ${avg}"
    echo "Min: ${min}"
    echo "Max: ${max}"
}


# get first 5 numbers and put them in an array
echo "Please enter 5 integers"
while [ $count -lt 5 ];
do
    read num
    # check if input is a valid integer
    if [[ "$num" =~ ^[0-9]+$ ]]; then
        numArray+=($num)
        count=$(($count + 1))
    else
        echo "Invalid input. Please enter an integer."
    fi
done

# prompt for other numbers
while (( count <= 9 )); do
    read -p "Please enter an integer or enter S to stop: " num
    if [[ $num =~ ^[0-9]+$ ]]; then
        numArray+=($num)
        count=$((count+1))
    elif [[ $num == "S" ]]; then
        break
    else
        echo "Invalid input, please enter an integer or S to stop."
    fi
done

# call the array_stats function with the array of integers
array_stats "${numArray[@]}"
echo "The final array is:"
echo ${numArray[@]}

