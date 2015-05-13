#!/bin/bash

export LC_ALL="en_US.UTF-8"
echo $1
mapcrafter -c $1 -j 2
mv mapcraft /var/www/html
sudo chmod 777 -R /var/www/
