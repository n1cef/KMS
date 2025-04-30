#!/bin/bash

domain=$1

if [ -z "$domain" ]; then 
	echo "usage ./activityswitch.sh {web| cyber | aiml | dops | mobile | math | physics | default }"
    exit 1;
fi    




# WEB_UUID="a8c02005-f5df-4bb3-9d55-6f2afa33c473"
# CYBER_UUID="0364d892-9815-474e-9dac-d492435e79ad"
# DEFAULT_UUID="82778a97-4bb2-433c-8910-04b4f0b1cda"
 #  CURRENT_ACTIVITY=$(qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.CurrentActivity)
     
       case "$domain" in
           "web") /opt/KMS/./web.sh ;;  
	   "ai") /opt/KMS/./ai.sh ;;
	   "cloudops") /opt/KMS/./cloudops.sh ;;
	   "mobile") /opt/KMS/./mobile.sh ;;
	   "math") /opt/KMS/./math.sh ;;
	   "physics") /opt/KMS/./physics.sh ;;
               "cyber") /opt/KMS/./cyber.sh ;;
	       "default") /opt/KMS/./default.sh;;
	        *) 
		 echo "unown option"	
                 esac

                   
                   
	    
