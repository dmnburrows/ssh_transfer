
#!/bin/bash

#Define input variables
data_type="trace"

#Define list
datapath="/Users/dominicburrows/Dropbox/PhD/Analysis/Project/PTZ-WILDTYPE-CCM/"
#array=($(find $datapath . -maxdepth 1 -name "*$data_type*pre-CCM.h5" ))
array=($(find $datapath . -maxdepth 1 -name "*.pdf" ))

#Loop through and send over each file

for i in "${array[@]}"
do
	echo "Sending $i"
	scp $i dburrows@shell.snl.salk.edu:/mnlsc/data/MCBL4/dburrows/single

done

echo "Finished!"
