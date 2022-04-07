#!/bin/bash

declare -a num
value=$(<num1.txt)
value2=$(<num2.txt)
num=($value $value2)

add()
{
	echo "num1 : ${num[0]}"
        echo "num2 : ${num[1]}"
        echo "op : add"
        echo "result : $(expr ${num[0]} + ${num[1]})"
}

sub()
{
        echo "num1 : ${num[0]}"
        echo "num2 : ${num[1]}"
        echo "op : sub"
        echo "result : $(expr ${num[0]} - ${num[1]})"
}

div()
{
        echo "num1 : ${num[0]}"
        echo "num2 : ${num[1]}"
        echo "op : div"
        echo "result : $(expr ${num[0]} / ${num[1]})"

}

mul()
{
        echo "num1 : ${num[0]}"
        echo "num2 : ${num[1]}"
        echo "op : mul"
        echo "result : $(expr ${num[0]} \* ${num[1]})"
}

if [ -n "$menu" ]
then
	if [ $menu = "add" ]
	then
		add
	elif [ $menu = "sub" ]
	then
		sub
	elif [ $menu = "div" ]
	then
        	div
	elif [ $menu = "mul" ]
	then
        	mul
	fi

else
	echo "...none operator parameter..."
	PS3='select menu : '

	select cal_menu in "add" "sub" "div" "mul"
	do
		if [ $cal_menu = "add" ]
        	then
                	add
			break
        	elif [ $cal_menu = "sub" ]
        	then
        		sub
			break
        	elif [ $cal_menu = "div" ]
        	then
                	div
			break
        	elif [ $cal_menu = "mul" ]
        	then
                	mul
			break
		else
			echo "ERROR"
			break
        	fi
	done
fi
