#!/bin/bash
echo "Thus script is made to download pwntools,DeathNo3,numpy and python itself"
echo "Please select an option!"
echo "all-Download pwntools,DeathNot3,numpy and python"
echo "py3-Only download python(Latest version availablr)"
echo "pwn-Only download pwntools(Assumes you have python installed)"
echo "dn3-Only download DeathNot3(Assumes you have python installed)"
echo "num-Only download numpy(Assumes you have python installed)"
echo "del-Delete all files including python"
read poi
if [[ $poi == "all" ]]; then
	sudo apt-get -y install python3 python3-pip python3-dev git libssl-dev libffi_dev bulid-essential;
	pip install dn3;
	pip install numpy;
	python3 -m pip install --upgrade pip;
	python3 -m pip install --upgrade pwntools;
	python3 -m pip install --upgrade dn3;
	python3 -m pip install --upgrade numpy;
	echo "Success"
elif [[ $poi == "py3" ]]; then
	sudo apt install python3;
	echo "Success"
elif [[ $poi == "pwn" ]]; then
	sudo apt-get -y install python3-pip python3-dev git libssl-dev libffi-dev bulid-essential;
	python3 -m pip install --upgrade pwntools;
elif [[ $poi == "dn3" ]]; then
	pip install dn3;
	python3 -m pip install --upgrade dn3;
elif [[ $poi == "num" ]]; then
	pip install numpy;
	python3 -m pip install --upgrade numpy;
elif [[ $poi == "del" ]]; then
	sudo apt-get purge python3 python3-pip python3-dev git libssl-dev libffi-dev ;
else
	echo "Not an option"
	sleep 1
	echo "TERMINATING"
	exit 1
fi
