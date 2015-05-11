#!/bin/bash

cd /home/ubuntu/minecraft-server/;
./mapcrafter.sh
java -Xmx800M -Xms800M -jar minecraft_server.1.8.4.jar nogui >> /home/ubuntu/minecraft-server/server.log
