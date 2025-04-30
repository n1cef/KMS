#!/bin/bash

 #Replace UUIDs with your actual values
 MOBILE_UUID=" d09c61a0-5d59-4768-8696-a22b2ebea17e"


qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.SetCurrentActivity "$MOBILE_UUID"

dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string: var allDesktops = desktops(); for (i=0;i<allDesktops.length;i++) { d = allDesktops[i]; d.wallpaperPlugin = "org.kde.image"; d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General"); d.writeConfig("Image", "file:///opt/KMS/assets/mobile.jpg") }'
