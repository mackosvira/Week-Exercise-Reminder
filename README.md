# Week-Exercise-Reminder
**Under Construction !!!**

Bash shell script that creates weekly plan for exercises and open a reminder, e.g. at PC starup, to show completed/not completed exercises planned for the week.
Initially this script is planned to track, follow up and practise classical gutar songs and exercises to keep playing in shape: 

> Songs can be forgoten if not practiced on regular basis.

> There is need for several types of execrcises to be scheduled under weekly plans (examples here: left hand, right hand, arpegios, studies and songlist)

> The script should make timestamp of completition on each exercise (or song practice) and to create new weekly plan with earliest executed ones. 

This script can be easily used for physical exetcises, divided in several types: indoor, outdoor, gym, sports etc.


## Script and files locations

### main directory
> The location of bash script, distributed in 3 files: exercise.sh (main), setup and functions

> Week plan text file to track current week status 

### "list" directory
> Containing separate text files for each excercise type with listed excercises within these files

> FIles can be edited via text editor (or later via promt)

### "status" directory
> Copy of "list" directory files with added timestamp from last execution of each execrcise

> log file to track changes (to be applied at later stage)


## How it should work

### First Startup
> Check if list and status directory files exist and call setup function if not. Each exercise will get random timestamp in setup phase.

> After initial setup, it will create first weekly plan stored in file

## Normal startup
> Shows list of exercise types, to select with wich one to proceed

> After seclected type, show exercises planned for current week, with option to set completed or return to main list menu

> If weekplan is > 7days, to prompt for deletion of existing plan and create new one


## Comments
Under construction at this moment.
The script is needed for practical reasons, but also for learning and bring in shape my already forgoten bash scripting knowledge.





