#!/bin/bash -x

function degreeConversion()
{
	case $a in
		1)
			read -p "Enter a number in degree celcius between (0-100C) " degC
			if (( $degC>=0 )) && (( $degC<=100 ))
			then
				degF=$(echo | awk '{ print '$degC*9/5+32'}')
				echo "$degC C = $degF F"
			else
				echo "Number is not between 0-100.try again"
			fi
		;;
		2)
			read -p "Enter a number in degree Fahrenheit between (32>212F) " degF
                        if (( $degF>=32 )) && (( $degF<=212 ))
                        then
				temp=$(echo | awk '{ print '$degF-32'}')
				degC=$(echo | awk '{ print '$temp*5/9'}')
				echo "$degF F = $degC C"
			else
				echo "Number is not between 32-212.try again"
			fi
		;;
	esac
}
echo "List Of Operations"
echo "1.degC to degF"
echo "2.degF to degC"

read -p "Enter a conversion number to be performed " a
degreeConversion $a
