
************************
# Virtual Box Manage  
vboxmanage startvms <name> #Start Vm by certain name   
vboxmanage list vms #List all vms  
vboxmanage list runningvms #self explanatory  

************************
# Screen and tmux  
screen # Create another terminal  
screen <command>  
ctr + a + d #to close the screen session  
screen -ls #see current screen sessions  
screen -r <id> # to return to a screen session. If there is only 1 session, just screen -r works  

tmux #open a terminal manager to have various temrinals in one screen  
ctr + b # is used to enter commands to tmux  
ctrl + b + % #Creates a new vertical partition  
ctrl + b + " #Creates a new horizontal partition  
ctrl + d #Closes current part of the screen  
ctrl + b (release) arrows #Moves between the partitions of the screen  
ctrl + b + arrows (without releasing the ctr + b) #Changes the current window size  
ctrl + b + spacebar #Toggles the windows positions (from vertical to horizontal and etc)  

screen tmux #open a tmux session on a screen session. This allows that the screen arragement continuous even though the ssh conection shuts down  

**********************
# User manage
adduser test #Create the user test  
su - test #log as test user  


**********************
# Tar and compression  
Tar is a tool to put a lot of files inside just one .tar file (it doesn't) compress by default.  
if a compression is needed, the generated file could be .tar.gz (or others)  

tar tf <file> #see what is on the tar file  
tar xf <file.tar> [<specific file inside>] #Xtract file or a specific file inside a .tar  
tar cf <file.tar> <Files to be put inside file.tar> #Create a tar  
tar cvf ... #Same as before but verbose. v option can be  
tar tfz <file.tar.gz> #shows the files inside  


*********************
# MISC  
file <file> #Type of file  
time <cmd> #the time that the cmd takes to run  
ls -l | wc -l #count the lines thrown by ls -l (-l for lines, -w for words, -c for characters)  

************************
# bash programming  

if [ "" = "${1}" ] # to see if the argument 1 exists  

echo $? #what was the code of the last command (to see if it was correctly executed)  

ls holamundo &> /dev/null #Send the stdout and stderr to the same file  
ls holamundo > /dev/null 2>&1 #Same as before  
ls holamundo > /dev/null 2> error.txt #send stdout to /dev/null and stderr to error.txt  
>&2 echo "lalala" #Send this message to stderr  

grep nickiler /etc/passwd | cut -d ':' -f 1 

## IF variants  
if [ something -a something_else ]  
if [[ something && something_else ]]   
if [ something ] && [something_else]   

last | grep nickiler | grep logged | head -1 | awk '{print $5,$6,$7}'  


## for
for i in $(cat list); do  
	echo ${i}  
done  

## Check parameters of script  
if [ "" == "${1}" ]; then   
        >&2 echo "${0} error. Missing field"  
	exit -1    
fi   


# Crontab
crontab -e
crontab -l
