#! /bin/bash 
# script to take back up og path in argument

 tar -cvf $1/backup_"$(date +%Y-%m-%d_%H-%M-%S)".gz $1/*

# Initial count the number of backup files in folder
count=$( ls -lt backup* | wc -l )
if [ $count -gt 3 ]
then echo "More than 3 files located in folder, Actual count= $count "
# deleting extra oldest files 
while [ $count -gt 3 ]
do 
fileDeleted=$( ls -t backup* | tail -1 )
echo "Deleting file $fileDeleted"
rm $fileDeleted
#reduce count for checking next oldest file
count=$( ls -lt backup* | wc -l )
done
fi
