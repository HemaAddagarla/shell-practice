!#bin/bash

#This script deletes log files that are olderthan 7 days 

fin "/var/log/" -type f -name "*.log"  -mtime +7  -exec rm -f {} \;
