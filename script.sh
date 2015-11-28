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
echo "+--------------------------------------------+"
echo "| Hello $USER"
echo "| Today is \c ";date 
echo "| Number of user login : \c" ; who | wc -l

alias compile="g++"
alias help="nano help.txt"

echo "+--------------------------------------------+"
echo "| Choose one of the following options:       |";
echo "|                                            |";
echo "| 0. Open existing file.                     |";
echo "| 1. Open a new file and start writing code. |";
echo "| 2. Open help.{does nothing}                |";
echo "| 3. Compile your file.                      |";
echo "| 4. Rename your compiled file               |";
echo "| 5. Run your program.                       |"; 
echo "| 6. Make a new folder.                      |";
echo "| 7. Tansfer files to new folder             |";
echo "| 8. Exit                                    |";
echo "+--------------------------------------------+"
echo ""
read -p " Enter your choice: " choice
echo ""

if [ $choice = "0" ]; then

	$cat > dia2
	dialog --title "Ritwick's C++ Programming software" --backtitle "Welcome to Ritwick's \
	C++" --msgbox "This is dialog box called msgbox, which is used\
	to show some information on screen. Begin with Ritwick's C++\
	software. Press any key. . . " 9 50
	clear
	echo ""
	read -p "Enter name of file to open: " filemane
	echo ""
	echo $filemane
	sudo vi $filemane
	
else 

	if [ $choice = "1" ]; then               
		read -p " Enter name of your file {abcd.cpp}: " filename
		echo ""          
		nano $filename;
		sh script.sh
	else 

		if [ $choice = "2" ]; then
			vi help.txt
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
						echo "      Output: ";
						echo "+------------------+";
						echo "      ";
						./$runp  
						echo "" 
						echo ""
						echo ""
					else 

						if [ $choice = "6" ]; then
							echo "works" 
							read -p "Enter name of new folder: " folder
							mkdir $folder
							sh script.sh
						else

							if [ $choice = "7" ]; then
								read -p "Enter name of the folder to transfer to: " folder2
								cd $folder2
								read -p "Enter name of files to transfer: " files
								sudo cp $files $folder2
								sudo cp script.sh $folder2
								cd $folder2
								rm -rv $files
							else

								if [ $choice = "8" ]; then
									exit


								fi
							fi				
						fi
					fi
				fi
			fi
		fi
	fi
fi