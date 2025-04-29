#!/bin/bash

domain=$1

if [ -z "$domain" ]; then 
	echo "usage ./activityswitch.sh {web| cyber}"
    exit 1;
fi    



 #Replace UUIDs with your actual values
# WEB_UUID="a8c02005-f5df-4bb3-9d55-6f2afa33c473"
# CYBER_UUID="0364d892-9815-474e-9dac-d492435e79ad"
# DEFAULT_UUID="82778a97-4bb2-433c-8910-04b4f0b1cda"
# while true; do
 #  CURRENT_ACTIVITY=$(qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.CurrentActivity)
     
       case "$domain" in
           "web") /home/n1cef/./web.sh ;;
	   "aiml") /home/n1cef/./aiml.sh ;;
	   "dops") /home/n1cef/./web.sh ;;
	   "mobile") /home/n1cef/./web.sh ;;
	   "math") /home/n1cef/./web.sh ;;
	   "physics") /home/n1cef/./web.sh ;;
               "cyber") /home/n1cef/./cyber.sh ;;
	       "default") /home/n1cef/./default.sh;;
	        *) 
		 echo "unown option"	
                 esac

                   
                     sleep 5  # Check every 5 seconds
	     #done
