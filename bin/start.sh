#!/bin/bash

DEPLOY_HOME=/home/ren/tools/jenkins/deploy/
APP_NAME=jenkins-demo
VERSION=0.0.1-SNAPSHOT

# kill the process named "jenkins-demo-0.0.1-SNAPSHOT.jar" if it is running
kill -9 $(ps -ef | grep $APP_NAME-$VERSION.jar | grep -v grep | awk '{print $2}')
cd $DEPLOY_HOME
JENKINS_NODE_COOKIE=DONT_KILL_ME

# start the application
nohup java -jar $APP_NAME-$VERSION.jar > $APP_NAME.log 2>&1 &
