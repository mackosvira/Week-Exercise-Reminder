#!/bin/bash

# bash script that create and reming on weekly exercises plan


# call functions files
. setup
. functions


# define initial exercise types - defined in "setup" file:
# exec_types=(study scales songs exercises new_songs)


# define weekly plan file location and name
week_plan="./week_plan.txt"


# define "list" and "status" directories names:
dir1="./list"
dir2="./status"


# check if "list" or "status" directories exist
# and call setup function if not
if [ ! -d "$dir1" ] || [ ! -d "$dir2" ]; then 
    setup1 $dir1 $dir2
fi


# check if "list" or "status" directories does not have files
# and call "setup" function
if [ -z "$(ls -A "$dir1")" ] || [ -z "$(ls -A "$dir2")" ]; then
    setup2 $dir1 $dir2
    echo "One or both directories are empty."
fi


# check if weekly plan exists and create if not
new_weekly_plan $week_plan $dir1


# check if week plan is older than 7 days and recreate new plan
old_plan $week_plan $dir1


# main cycle until all exercises are not completed or until exit by user
while grep -q "Not Started" $week_plan
do
	echo "list types of excercise (check)"
#	list_types
	env DISPLAY=:0.0 /usr/bin/zenity --text-info \
    --filename=$week_plan \
    --text="Week plan of execrcises:" \
    --width=700 --height=700
    exit

done
