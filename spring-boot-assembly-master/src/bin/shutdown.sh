#! /bin/shell

#==================================================== ======================
# Project stop server shell script
# Find PID by project name
# then kill -9 pid
#
# author: geekidea
# date: 2018-12-2
#==================================================== ======================

# project name
APPLICATION="@project.name@"

# Project startup jar package name
APPLICATION_JAR="@build.finalName@.jar"

PID=$(ps -ef | grep "${APPLICATION_JAR}" | grep -v grep | awk '{ print $2 }')
if [[ -z "$PID" ]]
then
    echo ${APPLICATION} is already stopped
else
    echo kill ${PID}
    kill -9 ${PID}
    echo ${APPLICATION} stopped successfully
fi