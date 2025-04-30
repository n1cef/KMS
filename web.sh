#!/bin/bash

 #Replace UUIDs with your actual values
 WEB_UUID="21379505-3021-4e33-adae-7992994d4632"


qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.SetCurrentActivity "$WEB_UUID"

dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string: var allDesktops = desktops(); for (i=0;i<allDesktops.length;i++) { d = allDesktops[i]; d.wallpaperPlugin = "org.kde.image"; d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General"); d.writeConfig("Image", "file:///opt/KMS/assets/web1.jpg") }'
