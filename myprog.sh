#!bin/bash

CreateDIR=./temp

mkdir $CreateDIR
echo "...create temp directory..."

cp num1.txt ./temp/num1.txt
cp num2.txt ./temp/num2.txt
cp cal.sh ./temp/cal.sh
echo "...copy files to temp directory..."

PS3='select menu : '
select menu in "add" "sub" "div" "mul"
do
	echo "...$menu selected..."
	echo "...run calculater..."
	echo ""
	export menu
	bash cal.sh
	break
done
