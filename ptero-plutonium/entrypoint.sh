#!/bin/bash
cd /home/container

# Output Current Wine Version
wine --version

# Setup Virtual Screen 
#Xvfb :0 -screen 0 1024x768x16 -nolisten tcp -nolisten unix
#export DISPLAY=:0.0

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo "Running ${MODIFIED_STARTUP}"

# Run the Server
( ${MODIFIED_STARTUP} )