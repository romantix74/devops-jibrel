#!/bin/sh

#echo "---before flask upgrade-----------"
#flask db upgrade
#while true; do
#  flask db upgrade
 # if [[ "$?" == "0" ]]; then
#    break
 # fi
#    echo Upgrade command failed, retrying in 2 secs...
#    sleep 2
#done

sleep 25

export FLASK_APP=app.py

flask db upgrade

#echo "-------before start app ----------"
exec python3 app.py