#!/bin/bash

export LC_ALL="en_US.UTF-8"
mapcrafter -c /home/ubuntu/minecraft-server/render.conf -j 2
chmod 777 -R /var/www/
