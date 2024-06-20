#!/bin/bash

echo "This program uses nmap to scan for open ports and services running in the provided network"

echo "How many networks do you want to scan?"

read NETWORK_NUM

touch networks.txt

echo "Write the address of the network you want to scan"

echo "If you chose to scan more than one network then click enter after the first and write the second address..."

for NETWORK_AM in $(seq 1 $NETWORK_NUM); do

read NETWORK_NAME

echo "Write the another address"

echo $NETWORK_NAME >>  networks.txt 

done

for NETWORKS in $(cat networks.txt); do

	echo "Scanning $NETWORKS and writing to a .txt file in working directory..."

	echo "Results from scanning $NETWORKS" >> result.txt
	
	nmap -sV -v $NETWORKS >> result.txt

	echo "Scanning complete!!"

	echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" >> result.txt
	echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" >> result.txt
	echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" >> result.txt
	echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" >> result.txt
	echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" >> result.txt
	echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" >> result.txt
	echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" >> result.txt
	
done

rm networks.txt
