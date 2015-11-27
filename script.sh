#!/bin/sh

clear
#DEFINED COLOR SETTINGS
RED=$(tput setaf 1 && tput bold)
GREEN=$(tput setaf 2 && tput bold)
STAND=$(tput sgr0)
BLUE=$(tput setaf 6 && tput bold)

                                        
cat << EOF
	▒█▀▀█ ▀█▀ ▀▀█▀▀ ▒█░░▒█ ▀█▀ ▒█▀▀█ ▒█░▄▀ █ ▒█▀▀▀█ 
	▒█▄▄▀ ▒█░ ░▒█░░ ▒█▒█▒█ ▒█░ ▒█░░░ ▒█▀▄░ ░ ░▀▀▀▄▄ 
	▒█░▒█ ▄█▄ ░▒█░░ ▒█▄▀▄█ ▄█▄ ▒█▄▄█ ▒█░▒█ ░ ▒█▄▄▄█ 

		▒█▀▀█ 　 ▒█▀▀█ █░░ █░░█ █▀▀ 　 ▒█▀▀█ 
		▒█░░░ 　 ▒█▄▄█ █░░ █░░█ ▀▀█ 　 ▒█▄▄█ 
		▒█▄▄█ 　 ▒█░░░ ▀▀▀ ░▀▀▀ ▀▀▀ 　 ▒█░░░ 

EOF

alias compile="g++"
alias help="nano help.txt"

echo ""
echo " Choose one of the following options : ";
echo ""
echo " 1. Open a new file and start writing code. ";
echo " 2. Open help.{does nothing}";
echo " 3. Compile your file. ";
echo " 4. Rename your compiled file";
echo " 5. Run your program. "; 
echo " 6. Exit. ";
echo ""
echo ""
read -p " Enter your choice: " choice
echo ""


if [ $choice = "1" ]; then               
read -p " Enter name of your file {abcd.cpp}: " filename
echo ""          
nano $filename
sh script.sh
else 

if [ $choice = "2" ]; then
nano help.txt
sh script.sh
else

if [ $choice = "3" ]; then
read -p " Enter file name to compile: " ftc
g++ $ftc
sh script.sh
else 

if [ $choice = "4" ]; then
echo "This will change compiled file name from a.out to userdefined";
read -p " Enter new name: " newname
mv a.out $newname
sh script.sh
else

if [ $choice = "5" ]; then
read -p "Enter program name to run: " runp
clear
./$runp
echo ""
echo "" 
echo ""
echo ""

if [ $choice = "6"]; then
	exit

fi
fi
fi
fi
fi
fi