#!/bin/zsh

while true; do
    echo "Menu:"
    echo "1. Print pattern"
    echo "2. Display currently logged-in usernames"
    echo "3. Display terminal number"
    echo "4. Addition of two floating point numbers"
    echo "5. Check if a string is palindrome"
    echo "0. Exit"

    read -p "Enter your choice (0-6): " choice

    case $choice in
        1)
            read -p "Enter the number of rows: " rows
            for ((i=1; i<=rows; i++)); do
                for ((j=rows; j>=i; j--)); do
                    echo -n "$j "
                done
                echo ""
            done
            ;;
        2)
            who 
            ;;
        3)
            tty
            ;;
        4)
            read -p "Enter first  number " num1
            read -p "Enter second  number: " num2
            result=$(echo "$num1 + $num2" | bc)
            echo "Sum: $result"
            ;;
        5)
            read -p "Enter  string: " string
            reversed_string=$(echo "$string" | rev)
            if [ "$string" == "$reversed_string" ]; then
                echo "Palindrome: Yes"
            else
                echo "Palindrome: No"
            fi
            ;;
        0)
            echo "Exit done !!"
            exit 0
            ;;
        *)
            echo "Invalid choice !!!."
            ;;
    esac
done
