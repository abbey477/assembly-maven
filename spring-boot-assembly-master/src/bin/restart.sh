#! /bin/shell

#==================================================== ======================
# Project restart shell script
# First call shutdown.sh to stop the server
# Then call startup.sh to start the service
#
# author: geekidea
# date: 2018-12-2
#==================================================== ======================

# project name
APPLICATION="@project.name@"

# Project startup jar package name
APPLICATION_JAR="@build.finalName@.jar"

# stop
echo stop ${APPLICATION} Application...
sh shutdown.sh

# start the service
echo start ${APPLICATION} Application...
sh startup.sh