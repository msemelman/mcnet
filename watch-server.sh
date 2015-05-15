#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
cd $DIR;

HITS=$DIR/hits.log
JUGADORES=$(./mccommand /list | grep -ho '[0-9]*/20'|grep -Pho '[0-9]*(?=/20)');
if [ "$JUGADORES" = "" ]; then
    echo "Server down";
    exit;
fi
echo "Hay "$JUGADORES" jugadores"
if [ $JUGADORES = 0 ]; then
    echo 'strike' >> $HITS;
    echo $(wc -l $HITS | awk '{print $1}');
    if [ $(wc -l $HITS | awk '{print $1}') -gt 3 ]; then
        rm $HITS
        echo 'OUUUUT';
        ./mccommand /stop;
        sleep 4;
        ./mccommand exit;
        aws ec2 stop-instances --instance-ids i-78ff6a9b
    fi
else 
    echo 'Salvado por la campana';
    rm -f $HITS
fi;

