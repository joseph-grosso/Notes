#/bin/bash

CURRENT_SEM="/home/joegr/Notes/bachelor-4/semester-1/"

ARRAY='' 
for file in "${CURRENT_SEM}*" 
do 
	ARRAY+=
done	
selected=$(ls -d ~/Notes/bachelor-4/semester-1/*/ | cut -c41-100 | rofi -dmenu -p "Select your current class:" -theme nord -i -no-fixed-num-lines)

if [ -z "$selected" ]
then 
	exit
fi 
rm ~/Notes/current-course

ln -s "${CURRENT_SEM}${selected}" ~/Notes/current-course 
