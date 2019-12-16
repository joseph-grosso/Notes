#/bin/bash

selected=$(ls -d ~/Notes/bachelor-3/semester-2/*/ | cut -c41-100 | rofi -dmenu -p "select your current class")

if [ -z "$selected" ]
then 
	exit
fi 
rm ~/Notes/current-course

ln -s "/home/joegr/Notes/bachelor-3/semester-2/${selected}" ~/Notes/current-course 
echo "Your current course is $selected"
