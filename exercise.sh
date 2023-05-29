#!/bin/bash


# bash script that create and reming on weekly exercises plan


# Define initial exercise types:
exec_types=(study scales songs exercises new_songs)

# Different types of exercises may be defined:
# exec_types=(indoor, outdoor, gym, sports, other)


# Define weekly plan file location and name.
# The file will be created if does not exist.
week_plan="./week_plan.txt"


# Define "list" and "status" directories names.
# Directories will be created if does not exist
dir1="./list"
dir2="./status"


# call functions files
. setup
. functions


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
    list_types
	
    exit

done
