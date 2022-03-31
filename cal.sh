#!/bin/bash

value=$(<num1.txt)
value2=$(<num2.txt)

add()
{
	echo "num1 : $value"
        echo "num2 : $value2"
        echo "op : add"
        echo "result : $(expr $value + $value2)"
}

sub()
{
        echo "num1 : $value"
        echo "num2 : $value2"
        echo "op : sub"
        echo "result : $(expr $value - $value2)"
}

div()
{
        echo "num1 : $value"
        echo "num2 : $value2"
        echo "op : div"
        echo "result : $(expr $value / $value2)"

}

mul()
{
        echo "num1 : $value"
        echo "num2 : $value2"
        echo "op : mul"
        echo "result : $(expr $value \* $value2)"
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
