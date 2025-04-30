#!/bin/bash

 #Replace UUIDs with your actual values
 PHYSICS_UUID="6436ba0f-7bb6-43a6-92cd-6852c2928d08"


qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.SetCurrentActivity "$PHYSICS_UUID"

dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string: var allDesktops = desktops(); for (i=0;i<allDesktops.length;i++) { d = allDesktops[i]; d.wallpaperPlugin = "org.kde.image"; d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General"); d.writeConfig("Image", "file:///opt/KMS/assets/physics.jpg") }'
