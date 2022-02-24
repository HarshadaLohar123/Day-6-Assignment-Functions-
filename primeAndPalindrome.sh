#!/bin/bash -x

read -p "Enter the First No : " no1
read -p "Enter the Second No : " no2

sum=0;
d=100;

function checkPrime()
{
	temp=1;
	Number=$1
	if(( $Number != 1 ))
	then
		for (( i=2; i<$Number; i++ ))
		do
			if(( $Number%$i==0 ))
			then
				temp=0;
				break;
			fi
		done
	fi
	if(( $temp == 1 ))
	then
		checkPalindrome $Number
	else
		echo "Number is Not Prime";	
	fi
}

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

checkPrime $no1;
checkPalindrome $no2;
