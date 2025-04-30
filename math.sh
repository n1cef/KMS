#!/bin/bash

 #Replace UUIDs with your actual values
 MATH_UUID="b5384a35-bccf-42c5-9b7e-d1aec2a14d56"


qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.SetCurrentActivity "$MATH_UUID"

dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string: var allDesktops = desktops(); for (i=0;i<allDesktops.length;i++) { d = allDesktops[i]; d.wallpaperPlugin = "org.kde.image"; d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General"); d.writeConfig("Image", "file:///opt/KMS/assets/math.jpg") }'
