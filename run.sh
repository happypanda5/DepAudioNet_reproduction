#! /usr/bin/env bash

FILES_PATH='/home/andrew/PycharmProjects/depaudionet'

#WITH GPU
count=1
end=6
while [ $count -le $end ]
do
    PTH=${FILES_PATH}/"main"${count}".py"
    echo "$PTH"
    python3.7 "$PTH" train --validate --vis --cuda --debug --position=${count}
    count=$(($count + 1))
done
 #python3.7 $FILES_PATH/main1.py train --validate --vis --cuda --debug
