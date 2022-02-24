#!/bin/bash -x

read -p "Enter the First No : " no1
read -p "Enter the Second No : " no2

sum=0;
d=100;

function checkPalindrome()
{
	Number=$1
	while (( $Number > 0 ))
	do
		r=$(( $Number % 10 ));
		sum=$(( $sum + ( $r * $d ) ));
		d=$(( $d / 10 ));
		Number=$(( $Number / 10 ));
	done
	if (( $no2 == $sum ))
	then
		echo "Number is Palindrome";
	else
		echo "Number is Not Palindrome";
	fi
}

checkPalindrome $no1;
checkPalindrome $no2;
