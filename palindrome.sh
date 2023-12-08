echo "Enter a string:"
read str

rev=$(echo $str | rev)

if [ "$str" = "$rev" ]; then
    echo "Palindrome"
else
    echo "Not a Palindrome"
fi

