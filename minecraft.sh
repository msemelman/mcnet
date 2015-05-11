#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
echo $DIR;
cd $DIR;
#./mapcrafter.sh $DIR/render.conf
screen -S 'minecraft' -d -m  java -Xmx800M -Xms800M -jar $DIR/minecraft_server.1.8.4.jar nogui >> $DIR/server.log
