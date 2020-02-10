#/bin/bash

CURRENT_SEM="~/Notes/bachelor-3/semester-2/*"

ARRAY='' 
for file in $CURRENT_SEM 
do 
	ARRAY+=
done	
selected=$(ls -d ~/Notes/bachelor-3/semester-2/*/ | cut -c41-100 | rofi -dmenu -p "Select your current class:" -theme nord -i -no-fixed-num-lines)

if [ -z "$selected" ]
then 
	exit
fi 
rm ~/Notes/current-course

ln -s "/home/joegr/Notes/bachelor-3/semester-2/${selected}" ~/Notes/current-course 
echo "Your current course is $selected"
