#! /bin/bash

add () {
	let z=( $x + $y ); echo "Result: ${z}"
}

subtract() {
	echo "Result $(($x-$y))"
}

multiply() {
	let z=($x*$y); echo $z
}

divide() {
	echo "Result $( expr $x / $y )"
}

operations=("a" "s" "m" "d" )

read -p "Specify either of the following operations:
a to add
s to subtract
m to multiply
d to divide
****************************************************: 
" operation

if [[ "${operations[*]}" =~ "${operation}" ]]; then
	read -p "First Number: " x 
	if [[ $((x)) != $x ]]; then
   		echo "Not a number! Rerun script again"
		exit 2
	fi

	read -p "Second Number: " y
    if [[ $((y)) != $y ]]; then
        echo "Not a number! Rerun sript again"
		exit 2
    fi

	case ${operation} in

		a) add ;;
		s) subtract ;;
		m)
			multiply
			;;
		"d")
			divide
			;;
		*)
			echo "System malfunction"
			exit 2
	esac

else
	echo "Invalid Operation. Please rerun the script again."
 	exit 1
fi




	


