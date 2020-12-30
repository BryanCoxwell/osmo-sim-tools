#! /bin/bash

ACTION=$1
echo $ACTION
if [[ $ACTION == "install" ]]
then
	python shadysim.py --smpp -l HelloSTK.cap -i HelloSTK.cap \
			--enable-sim-toolkit --module-aid d07002ca44900101 \
			--instance-aid d07002CA44900101 \
			--nonvolatile-memory-required 0100 \
			--volatile-memory-for-install 0100 \
			--max-menu-entry-text 15 \
			--max-menu-entries 05 \
			--kic  \
			--kid  \
			--dest-msisdn  \
			--smsc-ip "" \
			--system-name  \
			--system-pw 

elif [[ $ACTION == "delete" ]]
then
	python shadysim.py --smpp -d d07002CA449001 \
			--kic  \
			--kid  \
			--dest-msisdn  \
			--smsc-ip "" \
			--system-name \
			--system-pw 
else
	echo "Please pass action (install/delete)"
fi
