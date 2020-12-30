# osmo-sim-tools
Tool for remote file and application management of SIM cards, forked from git.osmocom.org/sim/sim-tools/

This integrates smpplib to allow interaction with an SMSC for sending applications and file updates to the SIM over the air. 

Take a look at send.sh for examples of installing and deleting files on the SIM. This can be run with `./send.sh install` or `./send.sh delete` to ease the burden of entering the many required arguments.

This is still a work in progress, only basic functionality is implemented.
