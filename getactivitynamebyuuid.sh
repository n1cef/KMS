#!/bin/bash
ACTIVITIES=$(qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.ListActivities)
for UUID in $ACTIVITIES; do
	  NAME=$(qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.ActivityName "$UUID")
	    echo "UUID: $UUID | Name: $NAME"
    done

