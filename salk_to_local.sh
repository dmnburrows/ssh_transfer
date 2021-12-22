#!/bin/bash
#Avoid having to do password at each iteration
#eval `ssh-agent -s`
#ssh-add ~/.ssh/*_rsa

#Define input variables

#Define list from remote host
array=($(ssh dburrows@shell.snl.salk.edu 'find /nadata/mnlsc/data/MCBL4/dburrows/single/**'))

#Loop through and send over each file

for i in "${array[@]}"
do
        echo "Sending $i"
        scp dburrows@shell.snl.salk.edu:$i ~/Dropbox/PhD/Analysis/Project/PTZ-WILDTYPE-CCM/

done

echo "Finished!"

