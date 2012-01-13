#!/bin/sh

IP=`cat $1`
NAME=$2

for i in $IP
do
COMMAND=`ssh root@$i grep $NAME /etc/passwd`
        if [ -n "$COMMAND" ]
                then
                        echo -e "$i\t|$COMMAND";
                else
                        echo -e "$i\t|Null";
        fi
done

