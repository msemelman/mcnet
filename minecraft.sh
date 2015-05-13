#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
cd $DIR;
#./mapcrafter.sh $DIR/render.conf

screen -L -S 'minecraft' -d -m  
screen -S minecraft -X stuff "java -Xmx800M -XX:+AggressiveOpts -Xms800M -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalPacing -jar $DIR/minecraft_server.1.8.4.jar nogui 2>&1 > server.log"$"\n"
