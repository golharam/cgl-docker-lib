#!/usr/bin/env bash
# Call tool with parameters
java $JAVA_OPTS -jar /opt/ubu/ubu.jar
# Fix ownership of output files
UID=$(stat -c '%u' /data)
GID=$(stat -c '%g' /data)
chown -R $UID:$GID /data