#!/bin/bash


echo "How many programs do you want to install"

read AMOUNT
touch pro_list.txt


for NAMES in $(seq 1 $AMOUNT); do
	echo "Write a list of file that you want to install!"
	echo "After entering a program name, press enter and type the next program name"

	read PROGRAM_NAME
	echo $PROGRAM_NAME >> pro_list.txt
	echo "$PROGRAM_NAME written!"
done


for INSTALL in $(cat pro_list.txt); do

echo "Installing $INSTALL!!!"

sudo apt-get install $PROGRAM_NAME


done

rm pro_list.txt
