#!/bin/bash

#Author: VCM.
#Created: 08/09/21
#Last Modified: 08/09/21

#Description:
# Creates a backup in the current directory of all files in the home directory.

echo "Who is there?"
read RESPONSE
echo "Hello there, $RESPONSE"
echo "I will now back up your home directory, $HOME"

currentdir=$(pwd)
echo "I will create save the backup file in $currentdir"

tar -cvf $currentdir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $HOME/* 2>/dev/null

echo "Backup completed successfully"

exit 0
