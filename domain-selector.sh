#!/bin/bash

CHOICE=$(kdialog --title "Select Domain" --radiolist "Choose a workflow:" \
	  "Web" "Web Development" off \
	    "Cyber" "Cybersecurity" off \
	    "AI" "AI and ML" off \
	    "Mobile" "Mobile Development" off \
	    "Devops" "Cloud and Devops " off \
            "Math" "Mathematics" off \
	    "Physics" "Physics" off \
	    "Default" "Default" on \
    
    
    
    )
    

if [ "$CHOICE" = "Web" ]; then
	  /opt/KMS/activityswitcher.sh web
  elif [ "$CHOICE" = "Cyber" ]; then
	    /opt/KMS/activityswitcher.sh cyber
   elif [ "$CHOICE" = "AI" ]; then
	   /opt/KMS/activityswitcher.sh ai
    elif [ "$CHOICE" = "Mobile" ]; then
	    /opt/KMS/activityswitcher.sh mobile
    elif [ "$CHOICE" = "Devops" ]; then
	    /opt/KMS/activityswitcher.sh cloudops
  elif [ "$CHOICE" = "Math" ]; then
	    /opt/KMS/activityswitcher.sh math
  elif [ "$CHOICE" = "Physics" ]; then
	    /opt/KMS/activityswitcher.sh physics

   elif [ "$CHOICE" = "Default" ]; then
	    /opt/KMS/activityswitcher.sh default	    
    else
	      kdialog --error "No domain selected!"
fi
